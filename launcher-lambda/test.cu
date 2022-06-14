struct MscData {
  float a;
  float b;
};

struct UrbanMsc {
  const MscData& data;

  __device__ auto make_calc_thing() const -> decltype(auto) {
    return [this](float step) { return this->data.a * step + this->data.b; };
  }
};

template <class F>
__device__ void apply_track(F calc_thing, float step, float* result) {
  *result = calc_thing(step);
}

__global__ void apply_kernel(const MscData data, float const* __restrict__ step,
                             float* __restrict__ result) {
  UrbanMsc msc{data};
  apply_track(msc.make_calc_thing(), step[threadIdx.x], &result[threadIdx.x]);
}