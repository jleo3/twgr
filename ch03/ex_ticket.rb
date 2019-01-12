class Ticket
  def initialize(venue)
    @venue = venue
  end
  def venue
    @venue
  end
  def date=(date)
    year, month, day = date.split("-")
    if year.length == 4 && month.length == 2 && day.length == 2
      @date = date
    else
      puts "Please submit the date in the format 'yyyy-mm-dd'"
    end
  end
  def date
    @date
  end
  def price=(amount)
    if (amount * 100).to_i == amount * 100
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

ticket = Ticket.new("Town Hall")
ticket.date = "1913-11-12"
ticket.price = 63.00
puts "The ticket is for an event on #{ticket.date} at #{ticket.venue}."
puts "The ticket for #{ticket.venue} has been discounted 15% to #{ticket.discount(15)}."
