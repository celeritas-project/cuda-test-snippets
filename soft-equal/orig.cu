#include <cmath>
__device__ __forceinline__ bool soft_equal_orig(double a, double b, double abs, double rel) {
  const double abs_e = std::fabs(a);
  if (std::fabs(b - a) < rel * abs_e) {
    return true;
  }
  const double eps_abs = abs;
  const double abs_a = std::fabs(b);
  if ((abs_e < eps_abs) && (abs_a < rel)) {
    return true;
  }
  if ((abs_a < eps_abs) && (abs_e < rel)) {
    return true;
  }
  if (std::isinf(a) && std::isinf(b) && std::signbit(a) == std::signbit(b)) {
    return true;
  }

  return false;
}

__global__ void soft_equal_kernel(bool* dest, double* a, double* b,
                                  double abs, double rel) {
  dest[threadIdx.x] = soft_equal_orig(a[threadIdx.x], b[threadIdx.x], abs, rel);
}
