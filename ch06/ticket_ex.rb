class Ticket
  attr_accessor :name, :venue, :date
  def initialize(name, venue, date)
    self.name = name
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.date == other_ticket.date
  end

end

class TicketComparer
  def self.compare(*tickets)
    base_ticket = tickets[0]
    tickets.shift
    puts case base_ticket
    when *tickets
      "Same date as #{tickets[0].name}!"
    end
  end
end

ticket1 = Ticket.new("ticket1", "Town Hall", "2018-07-08")
ticket2 = Ticket.new("ticket2", "Conference Center", "2018-07-08")
ticket3 = Ticket.new("ticket3", "Town Hall", "2018-08-09")
puts "#{ticket1.name} is for an event on: #{ticket1.date}."
TicketComparer.compare(ticket1, ticket2, ticket3)
