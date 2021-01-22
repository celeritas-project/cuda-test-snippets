# Introduction

Are any of the log/exp implementations substantially faster than the others?

# Descriptions

## log/log2/log10

Standard

## log2-float

## native-linear.cu

Explicitly do a simple for loop. Use unsigned type for consistency with the
`range-linear`. The `native-linear-signed` uses a signed int instead.

## range-linear.cu

Simple contiguous `for` loop using range.

# Results

The double-precision operations are formulated based on natural log and
exponentials. Converting to base-2 or base-10 requires an extra multiply in
both cases.

In contrast, single precision floating point values use base-2 as the
fundamental operation, and scale back to the other ones.

A double-precision exponent kernel requires 64 instructions and 14 registers,
compared to 9 instructions and 8 registers for the hardware-accelerated
single-precision arithmetic.

The double-precision log2 requires an extra multiply and a second fused
multiply-add.

# Conclusions

Natural log and exponential are slightly less expensive for double precision,
and base-2 log/exp are *very* slightly less expensive for single.
Since single-precision has built-in hardware, it is far cheaper than
double-precision.
