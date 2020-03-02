# Introduction

How many instructions and how much usage result from the dead simplest kernel
possible? And how does it compare to a thrust kernel?

# Results

The calculation of total "thread index" requires a few registers and a handful
of operations. Thrust's simple 'fill' command ends up generating a couple of
kernels each with significant register usage.

Interestingly, Thrust's kernel uses only a single dimension (x) as opposed to
the 'x*y' used in Shift. It furthermore uses the `.maxntid` PTX directive to
limit the number of threads per threadblock.
