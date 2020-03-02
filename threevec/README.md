# Introduction

What aliasing differences arise between "array-of-struct" vs "struct-of-array" for space vectors?

# Descriptions

## aos.cu

Use native cuda 3-vector `double3` to store points.

## aos.cu

Use native cuda 3-vector `double3` to store points, but use a generic struct that holds three pointers in the reference.

## soa.cu

Use a struct of three separate pointers for points.

## soa-strided.cu

Instead of having three separate arrays for each dimension, just index into the array using a major stride.

# Results

SOA requires 6 more registers and additional constant memory (4 extra pointers) than AOS. It also requires additional loads and pointer arithmetic. Using a strided array instead of three separate pointers reduces register usage. Making the AOS reference use "generic" x/y/z pointers doesn't change register usage but does increase instruction count (some additional pointer arithmetic).

# Conclusions

Although technically memory performance should increase by making accesses of each dimension (x,y,z) coalesced, using SOAs increases register pressure. For MC applications it's unlikely coalescing will actually matter, and based on the experience with Shift it's certainly not going to matter as much as register usage, which limits device occupancy.