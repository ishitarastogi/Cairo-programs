# Difference between let, local and temp_var

# Variables / References
# Use the output builtin.

#let 

#tempvar 

#cairo
%builtins output

# Import the serialize_word() function.
from starkware.cairo.common.serialize import serialize_word
# Outputs the value 2^9.
func main{output_ptr : felt*}():
    # alloc_locals
    tempvar x = 2
    let y = x * x * x
    # bit computational heavy
    let z = y * y * y
    # Because of the `let`s, the following line is equivalent to
    # serialize_word(x * x * x * x * x * x * x * x * x).
    serialize_word(z)
    return ()
end

