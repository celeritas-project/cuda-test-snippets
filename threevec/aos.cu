using Point = double3;

struct Ref {
  Point* pos;
  Point* dir;
  double* distance;
};

struct View {
  int size;
  Point* pos;
  Point* dir;
  double* distance;

  __device__ Ref operator[](int i) const {
    return {pos + i, dir + i, distance + i};
  }
};

__device__ inline void move_impl(const Ref& ref) {
  const double nextdist = *ref.distance;
  ref.pos->x += ref.dir->x * nextdist;
  ref.pos->y += ref.dir->y * nextdist;
  ref.pos->z += ref.dir->z * nextdist;
}

__global__ void move(View view) {
  const int idx = blockIdx.x * blockDim.x + threadIdx.x;
  if (idx < view.size) {
    move_impl(view[idx]);
  }
}
