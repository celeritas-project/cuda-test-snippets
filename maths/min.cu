template<class T>
__device__ const T& mymin(const T& a, const T& b)
{
    return (b < a) ? b : a;
}

__global__ void call_min(double* first, const double* second)
{
    first[threadIdx.x] = mymin(first[threadIdx.x], second[threadIdx.x]);
}
