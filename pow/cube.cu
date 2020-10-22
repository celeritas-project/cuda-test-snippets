#include <cmath>

inline __device__ double cube(double value)
{
    return value * value * value;
}

__global__ void cu_cbrt(double* value)
{
    value[threadIdx.x] = cube(value[threadIdx.x]);
}
