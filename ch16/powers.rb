def sum_powers(arr, power)
  powers = -> (power) { (1..Float::INFINITY).lazy.map { |x| x <= 1 ? 1 : x**power } }

  if power == 1
    arr
  else
    arr_power = arr.map { |x| powers.call(power).first(arr[x - 1]).last }
    [arr_power, sum_powers(arr, power - 1)].transpose.map { |x| x.reduce(:+) }
  end
end

puts sum_powers([1,2,3], 3)
