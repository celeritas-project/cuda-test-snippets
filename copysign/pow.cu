#include <cmath>

__global__ void my_copysign(double* v)
{
    int i = threadIdx.x;
    *v = std::pow(-1, i) * (*v);
}
