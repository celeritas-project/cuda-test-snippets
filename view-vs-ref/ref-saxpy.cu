#include "shared.cuh"

struct ParticleRef {
  Point pos;
  Point dir;
  double nextdist;
};

inline __device__ ParticleRef make_ref(const ParticleView &view, int i) {
  return {view.get_pos(i), view.get_dir(i), view.get_nextdist(i)};
}

__device__ inline void saxpy(double *__restrict__ x, double *__restrict__ y,
                             double *__restrict__ z,
                             const double *__restrict__ u,
                             const double *__restrict__ v,
                             const double *__restrict__ w, double distance) {
  *x += *u * distance;
  *y += *v * distance;
  *z += *w * distance;
}

__device__ inline void move_impl(const ParticleRef ref) {
  saxpy(ref.pos.x, ref.pos.y, ref.pos.z, ref.dir.x, ref.dir.y, ref.dir.z,
        ref.nextdist);
}

__global__ void move(ParticleView view) {
  int i = thread_id();
  if (i >= view.size) return;
  move_impl(make_ref(view, i));
}
