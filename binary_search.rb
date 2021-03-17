#a is sorted array

# Iterative
# The iterative solution has the same (log n) runtime complexity
# as the recursive solution but has a better memory complexity.
def binary_search(arr, key)
  low  = 0
  high = arr.length - 1

  while low <= high
    mid  = low + (high - low) / 2

    return mid if arr[mid] == key

    if arr[mid] > key
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return -1
end
# ----------

# Recursive
# def binary_search_rec(arr, key, low, high)
#   return -1 if low > high

#   mid  = low + (high - low) / 2

#   if arr[mid] == key
#     mid
#   elsif arr[mid] > key
#     binary_search_rec(arr, key, low, mid - 1)
#   else
#     binary_search_rec(arr, key, mid + 1, high)
#   end
# end

# def binary_search(arr, key)
#   binary_search_rec(arr, key, 0, arr.length - 1)
# end
# ----------

arr = [1, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]
inputs = [10, 49, 99, 110, 176]

for i in 0..inputs.length - 1
  puts "binary_search(arr, " + (inputs[i]).to_s+ ") = " +  (binary_search(arr, inputs[i]).to_s)
end