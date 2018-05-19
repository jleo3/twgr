module M
  def self.included(cl)
    def cl.a_class_method
      puts "Now the class has a new class method."
    end
  end
  def an_inst_method
    puts "This module supplies this instance method."
  end
end
class C
  include M
end
C.a_class_method
c = C.new
c.an_inst_method
