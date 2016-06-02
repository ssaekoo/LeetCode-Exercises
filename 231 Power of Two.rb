# Given an integer, write a function to determine if it is a power of two.

def is_power_of_two(n)
    return true if n == 1
    return false if n <= 0 || n % 2 != 0
    is_power_of_two(n / 2)
end
