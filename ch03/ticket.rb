class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]

  attr_reader :venue, :date
  attr_accessor :price

  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end

puts Ticket::VENUES
ng = Ticket.new("Home", "10/11/12")
th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
fg = Ticket.new("Fairgrounds", "13/14/15")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th,cc,fg)
puts "The highest-priced ticket is the one for #{highest.venue}."
