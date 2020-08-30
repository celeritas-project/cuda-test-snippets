__global__ void print_values(const int* ints, const double* dbls,
                             int* result)
{
    int i = threadIdx.x;
    result[i] = ints[i] + (dbls[i] > 0.0);
}
