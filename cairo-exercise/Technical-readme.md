## The registers

- Program counter (pc): contains the address in memory of the current Cairo
  instruction to be executed.

- Allocation pointer (ap): By convention, points to the first memory cell
  that has not been used by the program so far.

Many instructions may increase its value by one to indicate that another memory cell has
been used by the instruction.

This is merely a convention –the Cairo machine does not force that the memory cell ap has not been
used, and the programmer may decide to use it in different ways.

- Frame pointer (fp): points to the beginning of the stack frame of the current function. The value of fp allows a stack-like behavior: When a function starts, fp is set to be the same as the current ap, and when the function returns, fp resumes its previous value. Thus, the value of fp stays the same for all the instructions in the same invocation of a function. Due to this property, fp may be used to address the function’s arguments and local variables

# Field elements

In modern CPUs, the basic data type is a 64-bit integer.

In Cairo, the basic data type is an integer in the range 0<=x<P where P is a prime number.All the computations are done modulo P.

According to the documentation, tempvar references depend on the ap register and can be revoked.

On the other and, local variables only depend on the fp register and cannot be revoked.
