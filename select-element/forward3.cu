__global__ void select(const double* ran, const double* total, const int* size,
                       double** frac, double** xs, int* selection) {
  const unsigned int idx = blockIdx.x * blockDim.x + threadIdx.x;
  double accum = -total[idx] * ran[idx];
  const double* el_frac = frac[idx];
  const double* el_xs = xs[idx];
  unsigned int i = 0;
  unsigned int imax = size[idx] - 1;
  for (; i != imax; ++i) {
    accum += el_frac[i] * el_xs[i];
    if (accum >= 0)
        break;
  }
  selection[idx] = i;
}
