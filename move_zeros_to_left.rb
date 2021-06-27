def move_zeros_to_left(arr)
  read_index = arr.length - 1
  write_index = arr.length - 1
  
  return if arr.length < 1
  
  while read_index > 0
    if arr[read_index] != 0
      arr[write_index] = arr[read_index]
      write_index -= 1
    end

    read_index -= 1
  end

  while write_index >= 0
    arr[write_index] = 0
    write_index -= 1
  end
end

v = [-1, 10, 20, 0, 59, 63, 0, 88, 0]

puts "Original Array: " + v.to_s

move_zeros_to_left(v)

puts "After Moving Zeroes to Left: " + v.to_s