#include "physics/base/ParticleTrackView.hh"
#include "physics/base/SecondaryAllocatorPointers.hh"
#include "physics/base/SecondaryAllocatorView.hh"
#include "physics/em/EPlusGGInteractor.hh"
#include "random/cuda/RngEngine.cuh"

using namespace celeritas;

struct Params {
  ParticleParamsPointers particle;
  EPlusGGInteractorPointers interactor;
};

struct State {
  ParticleStatePointers particle;
  RngStatePointers rng;
  span<const Real3> direction;
  span<Interaction> result;
};

__global__ void test_kernel(Params const params, State const states,
                            SecondaryAllocatorPointers const secondaries) {
  int tid = blockIdx.x * blockDim.x + threadIdx.x;

  SecondaryAllocatorView allocate_secondaries(secondaries);
  ParticleTrackView particle(params.particle, states.particle, ThreadId(tid));
  RngEngine rng(states.rng, ThreadId(tid));

  EPlusGGInteractor interact(params.interactor, particle, states.direction[tid],
                             allocate_secondaries);

  Interaction result = interact(rng);

  states.result[tid] = result;
}
