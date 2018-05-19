class C
end
c = C.new
class << c
  def x
  end
  def y
  end
  def z
  end
  protected :y
  private :z
end
p c.singleton_methods.sort
class << c
  p private_instance_methods(false)
end
