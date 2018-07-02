def fibonacci_helper( a, b, count )
  if count == 0
    a
  else
    fibonacci_helper( b, a + b , count - 1 )
  end
end

def fibonacci( n )
  fibonacci_helper( 0, 1, n )
end

puts fibonacci(3)
