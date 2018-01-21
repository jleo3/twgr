class Painting
  include Comparable
  attr_reader :price
  def initialize(price)
    @price = price
  end
  def <=>(other_painting)
    self.price <=> other_painting.price
  end
  def to_s
    "My price is #{price}."
  end
end

pa1 = Painting.new(100)
pa2 = Painting.new(200)
puts pa1 > pa2

paintings = 5.times.map { |pa| Painting.new(rand(100..900)) }
puts "5 randomly generated Painting prices:"
puts paintings
puts
puts "Same Paintings, sorted:"
puts paintings.sort
