#include "base/Range.hh"

__global__ void move(const unsigned int max_steps, double distance, double* x) {
  auto start = (blockIdx.x * blockDim.x + threadIdx.x) * max_steps;
  for (auto i : celeritas::range(max_steps)) {
    x[start + i] += distance;
  }
}
