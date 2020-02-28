#include "shared.cuh"

struct ParticleRef {
  Point pos;
  Point dir;
  double nextdist;
};

inline __device__ ParticleRef make_ref(const ParticleView &view, int i) {
  return {view.get_pos(i), view.get_dir(i), view.get_nextdist(i)};
}

__device__ inline void move_impl(const ParticleRef ref) {
  const double x = *ref.pos.x;
  const double y = *ref.pos.y;
  const double z = *ref.pos.z;
  const double u = *ref.dir.x;
  const double v = *ref.dir.y;
  const double w = *ref.dir.z;
  *ref.pos.x = x + u * ref.nextdist;
  *ref.pos.y = y + v * ref.nextdist;
  *ref.pos.z = z + w * ref.nextdist;
}

__global__ void move(ParticleView view) {
  int i = thread_id();
  if (i >= view.size) return;
  move_impl(make_ref(view, i));
}
