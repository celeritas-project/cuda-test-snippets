#include "base/ArrayUtils.hh"

using namespace celeritas;

__global__ void rotate_kernel(
    Real3 const * const __restrict__ dir,
    Real3 const * const __restrict__ rot,
    Real3 * const __restrict__ dst)
{
    dst[threadIdx.x] = rotate(dir[threadIdx.x], rot[threadIdx.x]);
}
