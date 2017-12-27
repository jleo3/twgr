if (class MyClass; end)
  puts "Empty class definition is true!"
else
  puts "Empty class definition is false!"
end
if (class MyClass; 1; end)
  puts "Class definition with the number 1 in it is true!"
else
  puts "Class definition with the number 1 in it is false"
end
if (def m; return false; end)
  puts "Method definition is true!"
else
  puts "Method definition is false!"
end
if "string"
  puts "Strings appear to be true!"
else
  puts "Strings appear to be false"
end
if 100 > 50
  puts "100 is greater than 50!"
else
  puts "100 is not greater than 50!"
end
