#include <cmath>
__global__ void cu_cbrt(double* value)
{
    value[threadIdx.x] = std::cbrt(value[threadIdx.x]);
}
