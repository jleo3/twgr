class Banner
  def initialize(text)
    @text = text
  end
  def to_s
    @text
  end
  def +@
    @text.upcase
  end
  def -@
    @text.downcase
  end
  def !
    @text.reverse
  end
end
banner = Banner.new("Eat at Joe's!")
puts banner
puts +banner
puts -banner
puts !banner
puts (not banner)

