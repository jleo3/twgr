class ReportCard
  attr_accessor :name, :physics_grade, :chemistry_grade, :biology_grade

  def initialize(name, physics_grade, chemistry_grade, biology_grade)
    @name = name
    @physics_grade = physics_grade
    @chemistry_grade = chemistry_grade
    @biology_grade = biology_grade
  end

  def issue
    puts "Report Card for #{name}"
    puts
    puts "Physics: #{physics_grade}"
    puts "Chemistry: #{chemistry_grade}"
    puts "Biology: #{biology_grade}"
  end
end
