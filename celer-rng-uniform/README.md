- 'orig' uses (b-a) * xi + a
- 'new' adds `if` guards based on whether a is zero and (b-a) is not unity

Not sure why the extra instruction to "add zero" is generated.
