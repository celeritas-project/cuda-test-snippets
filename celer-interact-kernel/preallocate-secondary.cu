//---------------------------------*-CUDA-*----------------------------------//
// Copyright 2020 UT-Battelle, LLC, and other Celeritas developers.
// See the top-level COPYRIGHT file for details.
// SPDX-License-Identifier: (Apache-2.0 OR MIT)
//---------------------------------------------------------------------------//
//! \file KNDemoKernel.cu
//---------------------------------------------------------------------------//
// NOTE: this is commit 9f98601 of the "performance-tweaks" branch.
#include "KNDemoKernel.hh"

#include "base/ArrayUtils.hh"
#include "base/Assert.hh"
#include "base/KernelParamCalculator.cuda.hh"
#include "physics/base/ParticleTrackView.hh"
#include "physics/em/detail/KleinNishinaInteractor.hh"
#include "random/cuda/RngEngine.hh"
#include "physics/grid/PhysicsGridCalculator.hh"
#include "DetectorView.hh"
#include "KernelUtils.hh"

using namespace celeritas;
using celeritas::detail::KleinNishinaInteractor;

namespace demo_interactor
{
//---------------------------------------------------------------------------//
/*!
 * Perform a single interaction per particle track.
 *
 * The interaction:
 * - Clears the energy deposition
 * - Samples the KN interaction
 * - Emits a secondary as part of the interaction
 * - Kills the secondary, depositing its local energy
 * - Applies the interaction (updating track direction and energy)
 */
__global__ void iterate_kernel(ParamsDeviceRef const            params,
                               StateDeviceRef const             states,
                               DetectorPointers const           detector)
{
    DetectorView           detector_hit(detector);
    PhysicsGridCalculator  calc_xs(params.tables.xs, params.tables.reals);

    for (unsigned int tid = blockIdx.x * blockDim.x + threadIdx.x;
         tid < states.size();
         tid += blockDim.x * gridDim.x)
    {
        // Skip loop if already dead
        if (!states.alive[tid])
        {
            continue;
        }

        // Construct particle accessor from immutable and thread-local data
        ParticleTrackView particle(
            params.particle, states.particle, ThreadId(tid));
        RngEngine rng(states.rng, ThreadId(tid));

        // Move to collision
        demo_interactor::move_to_collision(particle,
                                           calc_xs,
                                           states.direction[tid],
                                           &states.position[tid],
                                           &states.time[tid],
                                           rng);

        Hit h;
        h.pos    = states.position[tid];
        h.thread = ThreadId(tid);
        h.time   = states.time[tid];

        if (particle.energy() < units::MevEnergy{0.01})
        {
            // Particle is below interaction energy
            h.dir              = states.direction[tid];
            h.energy_deposited = particle.energy();

            // Deposit energy and kill
            detector_hit(h);
            states.alive[tid] = false;
            continue;
        }

        // Construct RNG and interaction interfaces
        KleinNishinaInteractor interact(
            params.kn_interactor, particle, states.direction[tid]);

        // Perform interaction: should emit a single particle (an electron)
        Interaction interaction = interact(rng);
        CELER_ASSERT(interaction);
        CELER_ASSERT(interaction.num_secondaries() == 1);

        // Deposit energy from the secondary (effectively, an infinite energy
        // cutoff)
        {
            const auto& secondary = interaction.secondary;
            CELER_ASSERT(secondary);
            h.dir                 = secondary.direction;
            h.energy_deposited    = secondary.energy;
            detector_hit(h);
        }

        // Update post-interaction state (apply interaction)
        states.direction[tid] = interaction.direction;
        particle.energy(interaction.energy);
    }
}
//---------------------------------------------------------------------------//
} // namespace demo_interactor
