class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name, @age = name, age
  end
  def method_missing(m,*args,&block)
    if /set_(.*)/.match(m)
      self.public_send("#{$1}=", *args)
    else
      super
    end
  end
  def respond_to_missing?(m, include_private = false)
    /set_/.match(m) || super
  end
end

person = Person.new("Joe", 37)
person.set_age(38)
p person.age
p person.respond_to?(:set_age)
p person.method(:set_age)
