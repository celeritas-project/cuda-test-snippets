#include "shared.cuh"

__global__ void move(int size, double *__restrict__ x, double *__restrict__ y,
                     double *__restrict__ z, const double *__restrict__ u,
                     const double *__restrict__ v, const double *__restrict__ w,
                     const double *__restrict__ distance) {
  int i = thread_id();
  if (i >= size) return;
  x[i] += u[i] * distance[i];
  y[i] += v[i] * distance[i];
  z[i] += w[i] * distance[i];
}
