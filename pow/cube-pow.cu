#include <cmath>

__global__ void cu_pow(double* value)
{
    value[threadIdx.x] = std::pow(value[threadIdx.x], 3);
}
