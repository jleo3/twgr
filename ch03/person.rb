class Person
  def set_name(string)
    puts "Setting person's name..."
    @name = string
  end
  def get_name
    puts "Returning the person's name..."
    @name
  end
end

joe = Person.new
joe.set_name("Joe")
puts joe.get_name
