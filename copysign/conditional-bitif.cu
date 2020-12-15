#include <cmath>

__global__ void my_copysign(double* v) {
  int i = threadIdx.x;
  if (i & 1) {
    *v *= -1;
  }
}
