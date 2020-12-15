#include <cmath>

__global__ void my_copysign(double* v)
{
    int i = threadIdx.x;
    *v = (i == 0 ? 1 : -1) * (*v);
}
