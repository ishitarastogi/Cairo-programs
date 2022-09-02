# Cairo's Assert statements can be used for 2 different use cases:

# 1.Check if two variables are the same
# 2.Set a variable's value if it's currently not set

# Note that the usage of assert can feel unintuitive at times as 
# asserts also set values rather than just checking the value of it.

func main():
    tempvar a = 1
    tempvar b

    # Check if `a` is set to `1`.
    assert a = 1

    # One might assume that this checks if `b` is set to `1`.
    # However given that `b` is not set yet, it'll be set to
    #   `1` via this `assert` usage.
    assert b = 1

    # Check if `b` is set to `2` which will fail.
    assert b = 2

    return ()
end