#include <new>

struct Foo
{
    int value = 0x1234;
};

__global__ void kernel_simple(Foo* storage, Foo** initialized)
{
    Foo* start = storage + threadIdx.x * 2;
    start[0].value = 0x1234;
    start[1].value = 0x1234;
    initialized[threadIdx.x] = start;
}
