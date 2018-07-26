def factorial_powers(pfact, size)
  powers = -> (power) { (1..Float::INFINITY).lazy.map { |x| x**power } }

  if pfact == 1
    Array.new(size) { |x| x + 1 }
  else
    [powers.call(pfact).first(size), factorial_powers(pfact - 1, size)].flatten.sum

  end
end

puts factorial_powers(4, 3)

