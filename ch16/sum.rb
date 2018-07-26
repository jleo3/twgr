sum_all = -> (*numbers) { numbers.reduce(:+) }

puts sum_all.call(3,4,5)
puts sum_all_curried = sum_all.curry(4)
sum1 = sum_all_curried.(3,4)
puts sum1.(3,4)
