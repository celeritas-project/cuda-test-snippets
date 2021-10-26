#include "orange/surfaces/SurfaceAction.test.hh"
#include "base/KernelParamCalculator.cuda.hh"


using namespace celeritas_test;

__global__ void sa_test_kernel(SATestInput input)
{
    auto tid = celeritas::KernelParamCalculator::thread_id();
    if (tid.get() >= input.states.size())
        return;

    // Calculate distances in parallel
    CalcSenseDistanceLauncher<> calc_thread{input.params, input.states};
    calc_thread(tid);
}
