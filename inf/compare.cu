#include <cfloat>
#include <climits>
#include <cmath>

__global__ void isinf_kernel(const double* value, bool* result)
{
    result[threadIdx.x] = value[threadIdx.x] >= DBL_MAX;
}
