struct Real3
{
    double value[3];
};

struct ReturnType
{
    Real3 first, second;
};

__device__ ReturnType copy(const Real3& in1, const Real3& in2)
{
    return {in1, in2};
}

__global__ void call_min(int* offsets, const Real3* inputs, Real3* outputs)
{
    int idx = offsets[threadIdx.x];
    // Copy with some bogus offsets
    auto result = copy(inputs[idx], inputs[idx + 1]);
    outputs[idx - 1] = result.first;
    outputs[idx] = result.second;
}
