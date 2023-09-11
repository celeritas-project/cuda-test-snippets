#include <iostream>
using std::cout; using std::endl;

template <class T>
__global__ void fill(T* dst) {
  dst[threadIdx.x] = 0;
}

template<class F>
int get_num_reg(F* func)
{
    cudaFuncAttributes attr;
    cudaFuncGetAttributes(&attr, reinterpret_cast<void const*>(func));
    return attr.numRegs;
}

template<class F>
struct Executor
{
    F launch_kernel;

    template<class... Ts>
    void operator()(Ts... args)
    {
        cout << "num reg: " << get_num_reg(launch_kernel) << endl;
        launch_kernel<<<256, 1, 1>>>(args...);
    }
};


template<class F>
decltype(auto) make_executor(F* func)
{
    return Executor<F*>{func};
}

int main()
{
    int* device_data{nullptr};
    cudaMalloc(&device_data, 256);

    auto launch = make_executor(fill<int>);
    launch(device_data);
    return 0;
}