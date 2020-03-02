# Introduction

Is there any performance effect to extracting a local "reference" to a SOA particle compared to using the calculated thread ID to access fields each time one is needed? Can we use `__restrict__` to help us in any way?

# Descriptions

In these cases, `Point` is a list of three pointers rather than a single pointer to the beginning of a size-3 array.

## view.cu

Access all data from the view using the particle index each time it's needed. The view itself calculates the address of the thread-local data.

## view-extra-sizes.cu

Identical to the `view` case but store redundant sizes (each pointer has an associated size which in a real simulation would be identical.)

## ref.cu

Before doing any operations on the data, get a "reference" to all the thread-local particle data. (The reference is just a set of pointers.)

## saxpy.cu

Reference kernel that takes the exact same position/direction/distance data, but has zero abstractions and applies the `__restrict__` qualifier to all the kernel arguments.

## ref-explicit.cu

When performing the `move` saxpy, pull all of the RHS into const local variables first. On the CPU this would remove potential aliasing effects.

## ref-saxpy.cu

Use a `ParticleRef` as an intermediate type but apply the movement with a `saxpy` kernel with `__restrict__` qualifiers.

# Results

## View versus ref

View has 2 extra load instructions compared to `ref` and the same register usage. The difference is due to naively accessing `view.next_distance(i)` three separate times rather than storing it immedately as is implicitly done with the view reference. Making that change reduces the instruction count to the same numbers as the case with the reference.

## Adding unused "size"s to view

The `.ptx` file is, aside from register IDs, identical. The only change is in the usage, where the constant memory has increased, presumably because the size of the kernel argument data has increased.

## Ref vs saxpy

The "reference", explicit saxpy, and reference plus restricted saxpy have the same instruction count. The 'reference' has a register usage of 22 compared to 18, however, but adding an explicit 'saxpy' kernel to the 'reference' case further increased the register usage to  24.

# Conclusions

There appears to be no abstraction penalty for using a "reference" that embeds the thread ID as compared to a direct view. In fact, because pulling data into the reference may reduce the chance of having to re-access global memory, it can be "safer", as the initial implementation of both ref and view here showed that it  was easy to increase the number of memory accesses unintentionally.

The overall conclusion is that it's not necessary to worry about interacting with the view plus thread index at every step in the process. Dealing with thread-local references improves abstraction with no potential performance penalty.