module Music
  class Scale
    NOTES = %w(c c# d d# e f f# g a a# b)
    def play
      NOTES.each { |note| yield note }
    end
  end
end
scale = Music::Scale.new
scale.play { |note| puts "Next note is #{note}" }
enum = scale.enum_for(:play)
p enum.map { |note| note.upcase }
p enum.select { |note| note.include?("f") }
