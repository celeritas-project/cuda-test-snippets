#include "random/cuda/RngEngine.hh"
#include "base/KernelParamCalculator.cuda.hh"

using namespace celeritas;

__global__ void sample(RngStatePointers const states, double* result)
{
    auto thread_id = KernelParamCalculator::thread_id();
    RngEngine rng(states, thread_id);

    result[3 * thread_id.get()] = generate_canonical(rng);
    result[3 * thread_id.get() + 1] = 5 * generate_canonical(rng);
    result[3 * thread_id.get() + 2] = 2.5 + 5.25 * generate_canonical(rng);
}
