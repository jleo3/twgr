class C
  def initialize(n)
    @n = n
  end
  def n
    @n
  end
  def compare(c)
    if c.n > n
      puts "The other object's n is bigger."
    else
      puts "the other object's n is the same or smaller."
    end
  end
  protected :n
end
c1 = C.new(100)
c2 = C.new(101)
c1.compare(c2)
