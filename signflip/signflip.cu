#include <cmath>

__global__ void conditional(double* __restrict__ out,
                           double const* __restrict__ in,
                           double const* __restrict__ sgn) {
  int i = threadIdx.x;
  bool is_pos = sgn[i] > 0;
  out[i] = is_pos ? in[i] : -in[i];
}
