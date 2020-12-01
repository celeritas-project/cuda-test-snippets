# Question

Can we write a performant (limited) version of std::tie on device?

# Descriptions

## manual.cu

Manually copy two three-vectors by pointers in a single function.

## tie.cu

Define a pair that works with references. Return a pair of values and assign
to a pair of references.

# Results

The ordering of the loads and stores changed according to the new sequence
points, which may be more safe due to potential pointer aliasing in the
function arguments.

# Answer

Yes! It's simple and does the same operations.
