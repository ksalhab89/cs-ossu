def same_chars(s1, s2):
    """
    s1 and s2 are strings
    Returns boolean True is a character in s1 is also in s2, and vice
    versa. If a character only exists in one of s1 or s2, returns False.
    """
    # Your code here
    dist1 = True
    dist2 = True

    for char in s1:
        if char not in s2:
            dist1 = False

    for char in s2:
        if char not in s1:
            dist2 = False

    return dist1 and dist2


# Examples:
print(same_chars("abc", "cab"))  # prints True
print(same_chars("abccc", "caaab"))  # prints True
print(same_chars("abcd", "cabaa"))  # prints False
print(same_chars("abcabc", "cabz"))  # prints False
