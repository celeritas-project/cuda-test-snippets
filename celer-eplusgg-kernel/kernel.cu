#include "base/Assert.hh"
#include "base/KernelParamCalculator.cuda.hh"
#include "random/RngEngine.hh"
#include "physics/base/ModelInterface.hh"
#include "physics/base/ParticleTrackView.hh"
#include "physics/base/PhysicsTrackView.hh"
#include "base/StackAllocator.hh"
#include "physics/em/detail/EPlusGGInteractor.hh"

using namespace celeritas;
using namespace celeritas::detail;

__global__ void test_kernel(const EPlusGGPointers epgg,
                            const ModelInteractPointers model) {
  auto tid = celeritas::KernelParamCalculator::thread_id();

  StackAllocator<Secondary> allocate_secondaries(model.secondaries);
  ParticleTrackView particle(model.params.particle, model.states.particle, tid);
  EPlusGGInteractor interact(epgg, particle, model.states.direction[tid.get()],
                             allocate_secondaries);
  RngEngine rng(model.states.rng, tid);
  model.result[tid.get()] = interact(rng);
}
