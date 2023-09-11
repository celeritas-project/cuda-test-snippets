#include <cmath>
__device__ __forceinline__ bool soft_equal(double a, double b, double abs, double rel) {
  double thresh = std::fmax(abs, rel * std::fmax(std::fabs(a), std::fabs(b)));
  return std::fabs(a - b) < thresh;
}

__global__ void soft_equal_kernel(bool* dest, double* a, double* b,
                                  double abs, double rel) {
  dest[threadIdx.x] = soft_equal(a[threadIdx.x], b[threadIdx.x], abs, rel);
}
