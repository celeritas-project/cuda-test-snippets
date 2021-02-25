//---------------------------------*-CUDA-*----------------------------------//
// Copyright 2020 UT-Battelle, LLC, and other Celeritas developers.
// See the top-level COPYRIGHT file for details.
// SPDX-License-Identifier: (Apache-2.0 OR MIT)
//---------------------------------------------------------------------------//
//! \file KNDemoKernel.cu
//---------------------------------------------------------------------------//
// NOTE: this is commit 7b35b03 of the "performance-tweaks" branch.
#include "KNDemoKernel.hh"

#include "base/ArrayUtils.hh"
#include "base/Assert.hh"
#include "base/KernelParamCalculator.cuda.hh"
#include "physics/base/ParticleTrackView.hh"
#include "physics/base/SecondaryAllocatorView.hh"
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
 * - Allocates and emits a secondary
 * - Kills the secondary, depositing its local energy
 * - Applies the interaction (updating track direction and energy)
 */
__global__ void iterate_kernel(ParamsDeviceRef const            params,
                               StateDeviceRef const             states,
                               SecondaryAllocatorPointers const secondaries,
                               DetectorPointers const           detector)
{
    SecondaryAllocatorView allocate_secondaries(secondaries);
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
        Real3     pos  = states.position[tid];
        Real3     dir  = states.direction[tid];
        real_type time = states.time[tid];

        // Move to collision
        demo_interactor::move_to_collision(
            particle, calc_xs, dir, &pos, &time, rng);

        if (particle.energy() < units::MevEnergy{0.01})
        {
            // Particle is below interaction energy
            Hit h;
            h.pos              = pos;
            h.thread           = ThreadId(tid);
            h.time             = time;
            h.dir              = dir;
            h.energy_deposited = particle.energy();

            // Deposit energy and kill
            detector_hit(h);
            states.alive[tid] = false;
            continue;
        }

        // Construct RNG and interaction interfaces
        KleinNishinaInteractor interact(
            params.kn_interactor, particle, dir, allocate_secondaries);

        // Perform interaction: should emit a single particle (an electron)
        Interaction interaction = interact(rng);
        CELER_ASSERT(interaction);
        CELER_ASSERT(interaction.secondaries.size() == 1);

        // Deposit energy from the secondary (effectively, an infinite energy
        // cutoff)
        {
            Hit h;
            h.pos                 = pos;
            h.thread              = ThreadId(tid);
            h.time                = time;
            const auto& secondary = interaction.secondaries.front();
            h.dir                 = secondary.direction;
            h.energy_deposited    = secondary.energy;
            detector_hit(h);
        }

        // Update post-interaction state (apply interaction)
        states.direction[tid] = interaction.direction;
        states.position[tid]  = pos;
        states.time[tid]      = time;
        particle.energy(interaction.energy);
    }
}
//---------------------------------------------------------------------------//
} // namespace demo_interactor
