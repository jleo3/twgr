def sum_squares(x)
  squares = (1..Float::INFINITY).lazy.map { |x| x <= 1 ? 1 : x * x }
  if x == 0
    0
  else
    x**2 + sum_squares(x - 1)
  end
end

puts sum_squares(3)
puts (1..Float::INFINITY).lazy.map { |x| x <= 1 ? 1 : x * x }.first(3).sum
