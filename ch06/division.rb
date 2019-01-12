require 'irb'

def divide_by_user_input
  print "Enter a number: "
  n = gets.to_i
  begin
    result = 100 / n
  rescue ZeroDivisionError
    puts "Your number didn't work. Was it zero???"
    exit
  end
  puts "100/#{n} is #{result}."
end

divide_by_user_input
