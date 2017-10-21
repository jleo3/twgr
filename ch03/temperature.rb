class Temperature
  def Temperature.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
  def Temperature.f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
end

puts Temperature.c2f(100)
