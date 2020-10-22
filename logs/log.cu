#include <cmath>

__global__ void mylog(float* value)
{
    value[threadIdx.x] = std::log(value[threadIdx.x]);
}
