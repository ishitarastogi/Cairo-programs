# Cairo supports the creation and storage of objects in memory. 
# Once stored, a pointer to the object is returned which can be used by other functions.

# There are 3 different ways to allocate memory:

# 1. Memory Segment Allocation
# .Via alloc
# .Creates an arbitrary length array

%builtins output

from starkware.cairo.common.serialize import serialize_word
from starkware.cairo.common.alloc import alloc

func main{output_ptr : felt*}():

let (x : felt*) = alloc()
# serialize_word(x[0])
# As there is no value stored at the addres x so it will give error

    assert[x]=9
     serialize_word(x[0])
     assert[x+1]=5
# If size of the array is known to us
tempvar arr:felt*=new(1,2,3,4,5)
    return ()

end

