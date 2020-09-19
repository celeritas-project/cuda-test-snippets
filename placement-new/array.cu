#include <new>

struct Foo
{
    int value = 0x1234;
};

__global__ void kernel(Foo* storage, Foo** initialized)
{
    Foo* start = storage + threadIdx.x * 2;
    initialized[threadIdx.x] = new (start) Foo[2];
}
