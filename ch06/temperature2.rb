class Temperature
  def Temperature.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
  def Temperature.now
    rand(0..100)
  end
end
celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
fahrenheit = Temperature.now
puts "The temperature is now: #{fahrenheit} degrees Fahrenheit."
puts "Celsius\tFahrenheit"
celsius.each do |c;fahrenheit|
  fahrenheit = Temperature.c2f(c)
  puts "#{c}\t#{fahrenheit}"
end
puts fahrenheit

