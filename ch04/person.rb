module MeFirst
  def report
    puts "Hello from module"
  end
end
class Person
  include MeFirst
  def report
    puts "Hello from class!"
  end
end
p = Person.new
p.report
