class TravelAgentSession
  attr_reader :year

  def year=(y)
    @year = y.to_i
    if @year < 100
      @year = @year + 2000
    end
  end
end

tas = TravelAgentSession.new
x = tas.year = 18
puts x
puts tas.year
x = tas.year = "ha ha"
puts x
puts tas.year

