#include <cmath>

__global__ void mylog2(double* value)
{
    value[threadIdx.x] = std::log2(value[threadIdx.x]);
}
