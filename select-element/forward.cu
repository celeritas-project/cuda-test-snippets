__global__ void select(const double* ran, const double* total, const int* size,
                       double** frac, double** xs, int* selection) {
  const unsigned int idx = blockIdx.x * blockDim.x + threadIdx.x;
  double cutoff = total[idx] * ran[idx];
  double accum = 0;
  const double* el_frac = frac[idx];
  const double* el_xs = xs[idx];
  int el_size = size[idx];
  for (int i = 0; i < el_size - 1; ++i) {
    accum += el_frac[i] * el_xs[i];
    if (accum >= cutoff) selection[idx] = i;
  }
  selection[idx] = el_size - 1;
}
