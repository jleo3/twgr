def fibonacci_helper(x, y, num)
  num < 1 ? x : fibonacci_helper(y, x + y, num - 1)
end

def fibonacci(x)
  fibonacci_helper(0, 1, x)
end

