def sum_of_parts(arr)
  sum = 0
  arr.size.times { sum = sum + arr.shift }
  sum
end
