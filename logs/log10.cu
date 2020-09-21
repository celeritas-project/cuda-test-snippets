#include <cmath>

__global__ void mylog10(double* value)
{
    value[threadIdx.x] = std::log10(value[threadIdx.x]);
}
