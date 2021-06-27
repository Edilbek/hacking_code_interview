def find_max_sliding_window (arr, window_size)
  return [] if arr.empty? || window_size > arr.length
  
  
end

array = [1, 2, 3, 4, 5, 6,7, 8, 9, 10]  
puts "Array = " + array.to_s
res = find_max_sliding_window(array, 3)
puts "Max = " + res.to_s

# array1 = [10, 6, 9, -3, 23, -1, 34, 56, 67, -1, -4, -8, -2, 9, 10, 34, 67]
# puts "Array = " + array1.to_s
# res1 = find_max_sliding_window(array1, 3)
# puts "Max = " + res1.to_s