module M
  def self.extended(obj)
    puts "Module #{self} is being used by #{obj}."
  end
  def an_inst_method
    puts "This module supplies this instance method."
  end
end
class C
  include M
end
my_object = Object.new
my_object.extend(M)
my_object.an_inst_method
