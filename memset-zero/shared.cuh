__device__ inline int thread_id() {
  return blockIdx.x * blockDim.x + threadIdx.x;
}
