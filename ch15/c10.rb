class C
  def singleton_method_added(m)
    puts "Singleton method #{m} was just defined."
  end
end
c = C.new
def c.a_singleton_method
end
