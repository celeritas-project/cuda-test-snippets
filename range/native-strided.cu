__global__ void move(const int num_tracks, double distance, double* x) {
  for (int tid = blockIdx.x * blockDim.x + threadIdx.x; tid < num_tracks;
       tid += blockDim.x * gridDim.x) {
    x[tid] += distance;
  }
}
