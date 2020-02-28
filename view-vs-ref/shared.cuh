__device__ inline int thread_id() {
  return threadIdx.x +
         blockDim.x *
             (threadIdx.y + blockDim.y * (blockIdx.x + gridDim.x * blockIdx.y));
}

struct Point {
  double *x;
  double *y;
  double *z;
};

struct ParticleView {
  int size;
  Point pos;
  Point dir;
  double *nextdist;

  __device__ Point get_pos(int i) const {
    return {pos.x + i, pos.y + i, pos.z + i};
  }
  __device__ Point get_dir(int i) const {
    return {dir.x + i, dir.y + i, dir.z + i};
  }
  __device__ double get_nextdist(int i) const { return nextdist[i]; }
};
