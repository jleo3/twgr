class Record
  attr_accessor :artist, :title, :year, :rating

  def initialize(artist, title, year, rating)
    @artist = artist
    @title = title
    @year = year
    @rating = rating
  end
end

the_unseen = Record.new("Quasimoto", "The Unseen", 2000, 3.5)
the_unseen.rating = 4.5

the_unseen.freeze
the_unseen.artist.frozen?
#the_unseen.artist = "Madlib" # uncommenting this line will raise a FrozenError
