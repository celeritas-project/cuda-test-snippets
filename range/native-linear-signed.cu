#include "base/Range.hh"

__global__ void move(const int max_steps, double distance, double* x) {
  auto start = (blockIdx.x * blockDim.x + threadIdx.x) * max_steps;
  for (int i = 0; i < max_steps; ++i) {
    x[start + i] += distance;
  }
}
