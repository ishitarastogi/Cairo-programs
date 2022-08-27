# inscribed in the CPU(preprocessor)
%builtins output

# Import the serialize_word() function.
from starkware.cairo.common.serialize import serialize_word

# implicit arguments in curly brackets are required for the storage operations.stores the addresses of the output
# If a function foo() calls main(), foo() must also get and return the builtin pointer (output_ptr) and so does every function calling foo(). Since this pattern is so common, Cairo has syntactic sugar for it, called “Implicit arguments”. 
# This automatically adds an argument and a return value to the function. 
func main{output_ptr : felt*}():
    # Output 100 by calling serialize_word.
    serialize_word(100)
    # Output 200.
    serialize_word(200)
    # Output 300.
    serialize_word(300)
    # Return.
    return ()
end
