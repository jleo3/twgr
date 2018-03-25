module Secretive
  def name
    "[not available]"
  end
end
class Person
  attr_accessor :name
end
david = Person.new
david.name = "David"
joe = Person.new
joe.name = "Joe"
ruby = Person.new
ruby.name = "Ruby"
david.extend(Secretive)
ruby.extend(Secretive)
puts "We've got one person named #{joe.name}, " +
  "one named #{david.name}, " +
  "and one named #{ruby.name}."
