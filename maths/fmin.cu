#include <cmath>

__global__ void call_min(double* first, const double* second)
{
    first[threadIdx.x] = std::fmin(first[threadIdx.x], second[threadIdx.x]);
}
