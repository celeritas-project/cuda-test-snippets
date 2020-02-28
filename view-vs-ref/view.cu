#include "shared.cuh"

__device__ inline void move_impl(const ParticleView &view, int i) {
  *view.get_pos(i).x += *view.get_dir(i).x * view.get_nextdist(i);
  *view.get_pos(i).y += *view.get_dir(i).y * view.get_nextdist(i);
  *view.get_pos(i).z += *view.get_dir(i).z * view.get_nextdist(i);
}

__global__ void move(ParticleView view) {
  int i = thread_id();
  if (i >= view.size) return;
  move_impl(view, i);
}
