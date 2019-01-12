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
#ng = Ticket.new("Home", "2012-10-11") # uncommenting this line will throw an ArgumentError
th = Ticket.new("Town Hall", "2013-11-12")
cc = Ticket.new("Convention Center", "2014-12-13")
fg = Ticket.new("Fairgrounds", "2015-02-14")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th,cc,fg)
puts "The highest-priced ticket is the one for #{highest.venue}."
