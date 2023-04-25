#include "corecel/device_runtime_api.h"
#include "corecel/Assert.hh"
#include "corecel/Types.hh"
#include "corecel/sys/Device.hh"
#include "corecel/sys/KernelParamCalculator.device.hh"

#include "celeritas/global/alongstep/AlongStepLauncher.hh"
#include "celeritas/global/alongstep/detail/AlongStepUniformMsc.hh"

using namespace celeritas;

//---------------------------------------------------------------------------//
__global__ void
along_step_uniform_msc_kernel(DeviceCRef<CoreParamsData> const params,
                              DeviceRef<CoreStateData> const state,
                              DeviceCRef<UrbanMscData> const msc_data,
                              UniformFieldParams const field_params)
{
    auto tid = KernelParamCalculator::thread_id();
    if (!(tid < state.size()))
        return;

    auto launch = make_along_step_launcher(params,
                                           state,
                                           msc_data,
                                           field_params,
                                           NoData{},
                                           detail::along_step_uniform_msc);
    launch(tid);
}
