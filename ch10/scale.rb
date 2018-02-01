module Music
  class Scale
    NOTES = %w(c c# d d# e f f# g a a# b)
    def play
      NOTES.to_enum
    end
  end
end
scale = Music::Scale.new
puts scale.play.map { |note| puts "Next note is #{note}" }
