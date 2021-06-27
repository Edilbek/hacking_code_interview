# Given an array of integers, rotate the array by N elements where N is an integer:
# For positive values of N perform a right rotation.
# For negative values of N perform a left rotation.

def rotate_array(arr, n)
  return positive_n(arr.reverse!, n) if n.positive?
  return negative_n(arr.reverse!, n) if n.negative?
end

def positive_n(arr, n)
  arr.take(n).reverse! + arr.drop(n).reverse!
end

def negative_n(arr, n)
  
end

p rotate_array([1, 2, 3, 4, 5], 2)
p rotate_array([1, 2, 3, 4, 5],-3)