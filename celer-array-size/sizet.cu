#include "base/Array.hh"

using ArrayInt = celeritas::Array<int, 4>;

__global__ void assign(const int* src, ArrayInt* dst)
{
    dst[threadIdx.x].fill(src[threadIdx.x]);
}
