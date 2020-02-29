#include <thrust/fill.h>
#include <thrust/device_vector.h>
#include <thrust/execution_policy.h>

void fill_zero(thrust::device_vector<int>& v) {
  thrust::fill(thrust::device, v.begin(), v.end(), 0);
}
