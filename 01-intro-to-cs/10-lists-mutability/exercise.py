def all_true(n, Lf):
    """ n is an int
        Lf is a list of functions that take in an int and return a Boolean
    Returns True if each and every function in Lf returns True when called
    with n as a parameter. Otherwise, returns False.
    """
    # Your code here
    for f in Lf:
        if not f(n):
            return False
    return True


# Sample functions to use for testing
def is_even(x):
    return x % 2 == 0

def is_positive(x):
    return x > 0

def is_less_than_ten(x):
    return x < 10

# Test cases
test_cases = [
    (4, [is_even, is_positive, is_less_than_ten], True),   # All conditions hold
    (8, [is_even, is_positive], True),                     # Even and positive
    (7, [is_even, is_positive], False),                    # Not even
    (-2, [is_even, is_positive], False),                   # Not positive
    (10, [is_even, is_positive, is_less_than_ten], False), # 10 is not < 10
    (0, [is_even, is_positive], False),                    # 0 is not positive
    (5, [], True)                                          # Empty function list should return True
]

# Running tests
for n, Lf, expected in test_cases:
    result = all_true(n, Lf)
    print(f"all_true({n}, {Lf}) => {result}, Expected: {expected}, {'✅' if result == expected else '❌'}")
