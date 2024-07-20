#include "celeritas/Types.hh"
#include "celeritas/phys/FourVector.hh"
#include "corecel/Macros.hh"
#include "corecel/Types.hh"
#include "corecel/math/ArrayOperators.hh"
#include "corecel/math/ArrayUtils.hh"

namespace celeritas {

__global__ void test_kernel_2(Real3 const* vscm_arr, Real3 const* vxcm_arr,
                              Real3 const* cm_dir_arr, FourVector const* fv_arr,
                              Real3* result_mom) {
  Real3 const& vscm = vscm_arr[threadIdx.x];
  Real3 const& vxcm = vxcm_arr[threadIdx.x];
  Real3 const& cm_dir = cm_dir_arr[threadIdx.x];

  FourVector fv = fv_arr[threadIdx.x];
  for (int i = 0; i < 3; ++i) {
    result_mom[threadIdx.x][i] =
        fv.mom[0] * vscm[i] + fv.mom[1] * vxcm[i] + fv.mom[2] * cm_dir[i];
  }
}

}  // namespace celeritas