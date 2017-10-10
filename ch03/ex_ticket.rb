class Ticket
  def initialize(venue)
    @venue = venue
  end
  def venue
    @venue
  end
  def date=(date)
    month, day, year = date.split("/")
    if month.length == 2 && day.length == 2 && year.length == 2
      @date = date
    else
      puts "Please submit the date in the format 'mm/dd/yy'"
    end
  end
  def date
    @date
  end
  def price=(amount)
    if (amount *100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed."
    end
  end
  def price
    @price
  end
  def discount(percent)
    @price = @price * (100 - percent) / 100.0
  end
end

=begin
ticket = Ticket.new("Town Hall")
ticket.date = "11/12/1913"
ticket.price = 63.00
cc = Ticket.new("Convention Center", "12/13/14")
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."
puts "The ticket for #{th.venue} has been discounted 15% to #{th.discount(15)}.
=end
