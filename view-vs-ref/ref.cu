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
  *ref.pos.x += *ref.dir.x * ref.nextdist;
  *ref.pos.y += *ref.dir.y * ref.nextdist;
  *ref.pos.z += *ref.dir.z * ref.nextdist;
}

__global__ void move(ParticleView view) {
  int i = thread_id();
  if (i >= view.size) return;
  move_impl(make_ref(view, i));
}
