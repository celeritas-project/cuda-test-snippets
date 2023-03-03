
#include "celeritas/Types.hh"
#include "celeritas/field/DormandPrinceStepper.hh"
#include "celeritas/field/FieldDriverOptions.hh"
#include "celeritas/field/MakeMagFieldPropagator.hh"
#include "celeritas/field/UniformField.hh"
#include "celeritas/field/UniformFieldData.hh"
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
                            UniformFieldParams const field_par) {
  auto tid = KernelParamCalculator::thread_id();
  const celeritas::CoreTrackView track(track_data.params, track_data.states,
                                       tid);
  auto sim = track.make_sim_view();
  auto step_limit = sim.step_limit();

  auto particle = track.make_particle_view();
  auto geo = track.make_geo_view();
  auto propagate = make_mag_field_propagator<DormandPrinceStepper>(
      UniformField(field_par.field), field_par.options, particle, &geo);
  Propagation p = propagate(step_limit.step);
  if (p.boundary) {
    // Stopped at a geometry boundary: this is the new step action.
    CELER_ASSERT(p.distance <= step_limit.step);
    CELER_ASSERT(p.distance < step_limit.step);
    step_limit.step = p.distance;
    step_limit.action = track.boundary_action();
  } else if (p.distance < step_limit.step) {
    // Some other internal non-boundary geometry limit has been reached
    // (e.g. too many substeps)
    step_limit.step = p.distance;
    step_limit.action = track.propagation_limit_action();
  }
  sim.force_step_limit(step_limit);
}
