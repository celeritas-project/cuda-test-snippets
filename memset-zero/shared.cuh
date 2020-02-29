__device__ inline int thread_id() {
  return threadIdx.x +
         blockDim.x *
             (threadIdx.y + blockDim.y * (blockIdx.x + gridDim.x * blockIdx.y));
}
