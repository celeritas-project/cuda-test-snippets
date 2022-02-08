#include <cmath>

using real_type = double;
constexpr real_type fwhm_min_energy = 1e-3;

__global__ void loss_scaling(
    __restrict__ real_type const* energy,
    __restrict__ real_type* dst)
{
    real_type max_energy = energy[threadIdx.x];
    real_type result = real_type(0.5) * std::fmin(fwhm_min_energy / max_energy,
                                                  real_type(1))
           + real_type(1);
    dst[threadIdx.x] = result;
}
