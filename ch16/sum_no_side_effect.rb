def sum_of_parts(arr)
  sum = 0
  arr.size.times { |i| sum = sum + arr[i] }
  sum
end
