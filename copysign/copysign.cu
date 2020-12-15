#include <cmath>

__global__ void my_copysign(double* v)
{
    int i = threadIdx.x;
    *v = std::copysign(*v, double(i == 0 ? 1 : -1));
}
