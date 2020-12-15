#include <cmath>

__global__ void my_copysign(double* v)
{
    int i = threadIdx.x; // assume threadIdx < 2
    *v = ((i << 1) - 1) * (*v);
}
