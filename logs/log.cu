#include <cmath>

__global__ void mylog(double* value)
{
    value[threadIdx.x] = std::log(value[threadIdx.x]);
}
