class Person
  attr_accessor :name, :age
  def initialize(name)
    @name = name
  end
end
joe = Person.new("Joe")
joe.age = 37
p joe.instance_variables
