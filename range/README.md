# Introduction

Does `range` compile to the same assembly as a simple `for` loop? What about if
it uses stepping?

# Descriptions

## native-strided.cu

Explicitly do a "grid-width" loop with `for`.

## range-strided.cu

Do a "grid-width" loop with `range`. Note that since the thread/block dimensions are
unsigned, we either need to change `num_threads` to an unsigned int or
explicitly use `range<INT_TYPE>`.

## native-linear.cu

Explicitly do a simple for loop. Use unsigned type for consistency with the
`range-linear`. The `native-linear-signed` uses a signed int instead.

## range-linear.cu

Simple contiguous `for` loop using range.

# Results

With the initial implementation of range there is a warning about a meaningless
signed comparison, and the strided results require 11 extra instructions.
*However* the warning suggested to me that the `operator==` for `step_range`
should not use `step_ > 0 ?` but rather `step_ >= 0` so that the unsigned case
doesn't have to check the conditional. Indeed, making that change causes the
instruction count to match (at the cost of an extra warning about
signed/unsigned).

Also interesting is that the native loop takes .7 seconds to compile whereas
the range loop requires 1.4. NVCC is slooooow.

Finally, the linear loops use the same operations for unsigned ints, but
interestingly a raw `int` loop has one fewer subtraction.

# Conclusions

The `step_range_iter` needs to be modified so that the step positivity check is
removed for unsigned ints and should be avoided with signed ints. We also need
to implement some template specialization on signed/unsigned to fix the
warnings.
