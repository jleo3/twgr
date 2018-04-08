class Person
  def initialize(&block)
    instance_eval(&block)
  end
  def name(name=nil)
    @name ||= name
  end
  def age(age=nil)
    @age ||= age
  end
end
joe = Person.new do
  name "Joe"
  age 37
end
puts joe.name
puts joe.age
