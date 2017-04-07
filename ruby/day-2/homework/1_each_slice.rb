# Print the contents of an array of sixteen numbers, four at a time, using just each.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
slice = []
numbers.each do |n|
  slice.push(n)
  if slice.count == 4
    p slice
    slice = []
  end
end

# Now, do the same with each_slice in Enumerable.
numbers.each_slice(4) do |s|
  p s
end
