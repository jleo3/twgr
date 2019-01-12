def fibonacci(x)
  x <= 1 ? x : fibonacci(x - 1) + fibonacci(x - 2)
end

puts fibonacci(10)

