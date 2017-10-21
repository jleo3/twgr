class Person
  def species
    "Homo sapiens"
  end
  def set_name(string)
    puts "Setting person's name..."
    @name = string
  end
  def get_name
    puts "Returning the person's name..."
    @name
  end
end
class Rubyist < Person
end
david = Rubyist.new
puts david.species

joe = Person.new
joe.set_name("Joe")
puts joe.get_name
