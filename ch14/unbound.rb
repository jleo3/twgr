class A
  def a_method
    puts "Definition of class A"
  end
end
class B < A
  def a_method
    puts "Definition of class B (subclass of A)"
  end
end
class C < B
  def call_original
    A.instance_method(:a_method).bind(self).call
  end
end
c = C.new
c.call_original
