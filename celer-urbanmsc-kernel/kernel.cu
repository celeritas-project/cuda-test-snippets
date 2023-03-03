
#include "celeritas/Types.hh"
#include "celeritas/em/data/UrbanMscData.hh"
#include "celeritas/em/msc/UrbanMsc.hh"
#include "celeritas/global/CoreTrackData.hh"
#include "celeritas/global/CoreTrackView.hh"
#include "celeritas/track/SimTrackView.hh"
#include "corecel/Macros.hh"
#include "corecel/Types.hh"
#include "corecel/sys/KernelParamCalculator.device.hh"
#include "corecel/sys/ThreadId.hh"

using namespace celeritas;
using namespace celeritas::detail;

__global__ void test_kernel(CoreRef<MemSpace::device> const track_data,
                            DeviceCRef<UrbanMscData> const msc_data) {
  auto tid = KernelParamCalculator::thread_id();
  const celeritas::CoreTrackView track(track_data.params, track_data.states,
                                       tid);
  UrbanMsc msc{msc_data};

  auto sim = track.make_sim_view();
  auto step_limit = sim.step_limit();
  bool use_msc = msc.is_applicable(track, step_limit.step);
  if (use_msc) {
    msc.limit_step(track, &step_limit);
  }

  // Surrogate for propagation
  if (step_limit.step < 0.1) {
    step_limit.step = 0.1;
    step_limit.action = track.boundary_action();
  }
  if (use_msc) {
    msc.apply_step(track, &step_limit);
  }

  sim.force_step_limit(step_limit);
}
