#include <cmath>

__global__ void conditional(double* __restrict__ out,
                            double const* __restrict__ in,
                            double const* __restrict__ sgn) {
  int i = threadIdx.x;
  bool is_positive = sgn[i] > 0;
  out[i] = in[i] * (2 * is_positive - 1);
}
