class Silly
  def price=(x)
    puts "The current time is #{Time.now}"
  end
end
s = Silly.new
s.price = 111.22
