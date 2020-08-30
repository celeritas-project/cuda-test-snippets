#include <cstdio>

__global__ void print_values(const int* ints, const double* dbls,
                             int* result)
{
    int i = threadIdx.x;
    std::printf("Int %d, double %f\n", ints[i], dbls[i]);
    result[i] = ints[i] + (dbls[i] > 0.0);
}
