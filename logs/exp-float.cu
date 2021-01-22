#include <cmath>

__global__ void myexp(float* value)
{
    value[threadIdx.x] = std::exp(value[threadIdx.x]);
}
