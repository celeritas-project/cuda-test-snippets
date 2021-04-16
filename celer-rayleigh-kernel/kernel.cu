#include "base/Assert.hh"
#include "base/KernelParamCalculator.cuda.hh"
#include "random/RngEngine.hh"
#include "physics/base/ModelInterface.hh"
#include "physics/base/ParticleTrackView.hh"
#include "physics/base/PhysicsTrackView.hh"
#include "base/StackAllocator.hh"
#include "physics/em/detail/RayleighInteractor.hh"

using namespace celeritas;
using namespace celeritas::detail;

__global__ void test_kernel(const RayleighDeviceRef rayleigh,
                            const ModelInteractPointers model) {
  auto tid = celeritas::KernelParamCalculator::thread_id();

  ParticleTrackView particle(model.params.particle, model.states.particle, tid);
  ElementId el_id{0};

  RayleighInteractor interact(rayleigh, particle,
                              model.states.direction[tid.get()], el_id);

  RngEngine rng(model.states.rng, tid);
  model.result[tid.get()] = interact(rng);
}
