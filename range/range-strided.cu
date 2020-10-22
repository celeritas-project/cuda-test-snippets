#include "base/Range.hh"

__global__ void move(const unsigned int num_tracks, double distance, double* x) {
  for (auto tid :
       celeritas::range(blockIdx.x * blockDim.x + threadIdx.x, num_tracks)
           .step(blockDim.x * gridDim.x)) {
    x[tid] += distance;
  }
}
