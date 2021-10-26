#include "random/RngEngine.hh"
#include "random/distributions/UniformRealDistribution.hh"
#include "base/KernelParamCalculator.cuda.hh"

using namespace celeritas;

__device__ __forceinline__ double sample(RngEngine& r, double lower, double
                                         upper)
{
    return UniformRealDistribution<double>(lower, upper)(r);
}

__global__ void sample(RngEngine::StateRef const states, double* result)
{
    auto thread_id = KernelParamCalculator::thread_id();
    RngEngine rng(states, thread_id);

    result[3 * thread_id.get()] = sample(rng, 0, 1);
    result[3 * thread_id.get() + 1] = sample(rng, 0, 5);
    result[3 * thread_id.get() + 2] = sample(rng, 2.5, 7.75);
}
