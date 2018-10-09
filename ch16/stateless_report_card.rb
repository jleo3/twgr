class ReportCard
  def self.issue(name, physics_grade, chemistry_grade, biology_grade)
    puts "Report Card for #{name}"
    puts
    puts "Physics: #{physics_grade}"
    puts "Chemistry: #{chemistry_grade}"
    puts "Biology: #{biology_grade}"
  end
end
