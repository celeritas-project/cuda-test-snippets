#include <cmath>

__global__ void isinf_kernel(const double* value, bool* result)
{
    result[threadIdx.x] = std::isinf(value[threadIdx.x]) & (value[threadIdx.x] > 0);
}
