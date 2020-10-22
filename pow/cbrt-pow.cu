#include <cmath>

__global__ void cbrt_pow(double* value)
{
    value[threadIdx.x] = std::pow(value[threadIdx.x], 1. / 3);
}
