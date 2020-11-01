# Hypothesis

Looping backward until the element index counter is zero, and the sampled cross
section is nonpositive, will be faster (use fewer instructions and registers)
than incrementing the counters, which requires comparisons against a second
fixed value.

# Descriptions

## forward.cu

Naive implementation of selecting an element by incrementing.

## backward.cu

Decrementing loop as implemented in `ElementSelector`, optimized in CPU code
based on https://github.com/sethrj/testsnippets/tree/master/select-nuclide .

## forward2.cu

More optimized version of forward, more closely equivalent to the optimized backward case.

## forward3.cu

Compromise between forward and backward: decrement the rng value but increment
the memory access.

# Results

Compared to the naive forward, the optimized backward case requires half the
number of PTX instructions (102 vs 47) and 10 fewer registers.

Compared to the optimized forward, the optimized backward uses only 4 fewer
registers. However it only uses 3 fewer instructions, and it replaces a fused-
multiply-add with separate subtraction and multiply operations.

The compromise "forward3" uses 1 more instruction to negate the initial
accumulated cross section, but it uses two fewer registers than foward2.

# Conclusions

A little optimization of the sampling kernel unambiguously reduced the
instruction count by a factor of 2, but the choice of decrementing vs
incrementing produces only a minor savings. The choice of forward vs backward
element sampling probably needs to be tested in a real app to see if it makes
any difference. The backward memory access pattern may also incur a performance
penalty.

The forward3 seems like a reasonable compromise: typical memory access pattern
but lower register usage.
