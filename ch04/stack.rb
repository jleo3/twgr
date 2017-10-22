require_relative "stacklike"

class Stack
  include Stacklike
end

s = Stack.new
s.add_to_stack("item one")
s.add_to_stack("item two")
s.add_to_stack("item three")
puts "Objects currently on the stack:"
puts s.stack
taken = s.take_from_stack
puts "Removed this object:"
puts taken
puts "Now on stack:"
puts s.stack
