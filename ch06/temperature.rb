class Temperature
  def Temperature.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
  def Temperature.now
    rand(0..100)
  end
end
celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
for c in celsius
  puts "#{c}\t#{Temperature.c2f(c)}"
end
