require_relative 'report_card'

class Grade
  attr_reader :letter

  def calculate_grade(scores)
    case scores.sum / scores.size
    when 90..100
      @letter = "A"
    when 80...90
      @letter = "B"
    when 70...80
      @letter = "C"
    when 60...70
      @letter = "D"
    else
      @letter = "F"
    end
  end
end

physics_grade = Grade.new
physics_grade.calculate_grade([78,92,90])
chemistry_grade = Grade.new
chemistry_grade.calculate_grade([90,80,88])
biology_grade = Grade.new
biology_grade.calculate_grade([99,90,98])

rc = ReportCard.new("Joe", physics_grade, chemistry_grade, biology_grade)
rc.issue
