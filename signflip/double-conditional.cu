#include <cmath>

__global__ void conditional(double* __restrict__ out,
                           double const* __restrict__ in,
                           double const* __restrict__ sgn) {
  int i = threadIdx.x;
  double helicity = sgn[i] > 0 ? 1 : -1;
  out[i] = in[i] * helicity;
}
