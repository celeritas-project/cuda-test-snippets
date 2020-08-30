# Introduction

What aliasing differences arise between "array-of-struct" vs "struct-of-array" for space vectors?

# Descriptions

## run-printf.cu

Do a simple operation, and print an integer and a double.

## run-noprintf.cu

Just do the simple operation.

# Results

The string gets stored as a constant in global memory, and stack size and
instruction count are both increased.

# Conclusions

Printf is expensive.
