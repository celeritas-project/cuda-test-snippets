#include "shared.cuh"

__global__ void memset_zero(int* all_thread_ids)
{
    int i = thread_id();
    all_thread_ids[i] = 0;
}
