c = Class.new
c.class_eval do
  def some_method
    puts "Created in class_eval"
  end
end
c_instance = c.new
c_instance.some_method
