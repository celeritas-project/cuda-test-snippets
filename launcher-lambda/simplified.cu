struct MscData {
  float a;
  float b;
};

__global__ void apply_kernel(const MscData data, float const* __restrict__ step,
                             float* __restrict__ result) {
  result[threadIdx.x] = data.a * step[threadIdx.x] + data.b;
}