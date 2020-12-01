struct Real3
{
    double value[3];
};

__device__ void copy(const Real3& in1, const Real3& in2,
                          Real3* out1, Real3* out2)
{
    *out1 = in1;
    *out2 = in2;
}

__global__ void call_min(int* offsets, const Real3* inputs, Real3* outputs)
{
    int idx = offsets[threadIdx.x];
    // Copy with some bogus offsets
    copy(inputs[idx], inputs[idx + 1], &outputs[idx - 1], &outputs[idx]);
}
