#include "shared.cuh"

template <class T>
struct View {
  int size;
  T *ptr;
};

struct SizedParticleView {
  View<double> x, y, z, u, v, w, nextdist;

  __device__ int size() const { return x.size; }

  __device__ Point get_pos(int i) const {
    return {x.ptr + i, y.ptr + i, z.ptr + i};
  }
  __device__ Point get_dir(int i) const {
    return {u.ptr + i, v.ptr + i, w.ptr + i};
  }
  __device__ double get_nextdist(int i) const { return nextdist.ptr[i]; }
};

__device__ inline void move_impl(const SizedParticleView &view, int i) {
  *view.get_pos(i).x += *view.get_dir(i).x * view.get_nextdist(i);
  *view.get_pos(i).y += *view.get_dir(i).y * view.get_nextdist(i);
  *view.get_pos(i).z += *view.get_dir(i).z * view.get_nextdist(i);
}

__global__ void move(SizedParticleView view) {
  int i = thread_id();
  if (i >= view.size()) return;
  move_impl(view, i);
}
