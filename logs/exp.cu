#include <cmath>

__global__ void myexp(double* value)
{
    value[threadIdx.x] = std::exp(value[threadIdx.x]);
}
