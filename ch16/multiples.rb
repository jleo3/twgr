def multiples_of_3(arr)
  arr.select { |el| el % 3 == 0 }
end

def multiples_of_5(arr)
  arr.select { |el| el % 5 == 0 }
end

puts multiples_of_3([-3,3,4,5,6,8,9,12])
puts multiples_of_5([-3,3,4,5,6,8,9,10,12])

find_multiples = ->(x, arr) { arr.select { |el| el % x == 0 } }

mult = find_multiples.curry
mult_of_3 = mult.(3)
mult_of_5 = mult.(5)
puts mult_of_3.([3,4,5,6])

def find_multiples(num, mult)
  (1..Float::INFINITY).lazy.select { |x| x % mult == 0 }.first(num)
end

puts find_multiples(3,50)
