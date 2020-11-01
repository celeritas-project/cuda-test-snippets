__global__ void select(const double* ran, const double* total, const int* size,
                       double** frac, double** xs, int* selection) {
  const unsigned int idx = blockIdx.x * blockDim.x + threadIdx.x;
  double cutoff = total[idx] * ran[idx];
  const double* el_frac = frac[idx];
  const double* el_xs = xs[idx];
  unsigned int i = size[idx] - 1;
  for (; i > 0; --i) {
    cutoff -= el_frac[i] * el_xs[i];
    if (cutoff <= 0)
        break;
  }
  selection[idx] = i;
}
