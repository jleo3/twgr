class ReportCard
  attr_accessor :physics_grade, :chemistry_grade, :biology_grade

  def initialize(physics_grade, chemistry_grade, biology_grade)
    @physics_grade = physics_grade
    @chemistry_grade = chemistry_grade
    @biology_grade = biology_grade
  end

  def issue
    puts "Report Card for #{physics_grade.name}"
    puts
    puts "Physics: #{physics_grade.letter}"
    puts "Chemistry: #{chemistry_grade.letter}"
    puts "Biology: #{biology_grade.letter}"
  end
end
