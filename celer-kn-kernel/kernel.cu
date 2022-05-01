#include "base/KernelParamCalculator.device.hh"
#include "sim/CoreTrackData.hh"
#include "random/RngEngine.hh"
#include "physics/base/ParticleTrackView.hh"
#include "physics/base/PhysicsTrackView.hh"
#include "base/StackAllocator.hh"
#include "physics/em/detail/KleinNishinaInteractor.hh"

using namespace celeritas;
using namespace celeritas::detail;

__global__ void test_kernel(
    const CoreRef<MemSpace::native> core,
    const KleinNishinaData kn,
    Interaction* results) {
  auto tid = KernelParamCalculator::thread_id();

  StackAllocator<Secondary> allocate_secondaries(core.states.secondaries);
  ParticleTrackView particle(core.params.particles, core.states.particles, tid);

  KleinNishinaInteractor interact(
      kn, particle, core.states.geometry.dir[tid], allocate_secondaries);

  RngEngine rng(core.states.rng, tid);
  results[tid.get()] = interact(rng);
}
