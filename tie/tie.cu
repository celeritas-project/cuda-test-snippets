struct Real3
{
    double value[3];
};

template<class T1, class T2>
struct Pair
{
    T1 first;
    T2 second;

    template<class U1, class U2>
    __device__ Pair& operator=(const Pair<U1, U2>& other)
    {
        first = other.first;
        second = other.second;
        return *this;
    }
};

template<class T1, class T2>
inline __device__ Pair<T1&,T2&> pair_tie(T1& first, T2& second)
{
    return {first, second};
}

__device__ Pair<Real3, Real3> copy(const Real3& in1, const Real3& in2)
{
    return {in1, in2};
}

__global__ void call_min(int* offsets, const Real3* inputs, Real3* outputs)
{
    int idx = offsets[threadIdx.x];
    // Copy with some bogus offsets
    pair_tie(outputs[idx - 1], outputs[idx])
        = copy(inputs[idx], inputs[idx + 1]);
}
