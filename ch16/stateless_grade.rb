require_relative 'stateless_report_card'

class Grade
  def self.calculate_grade(scores)
    case scores.sum / scores.size
    when 90..100
      "A"
    when 80...90
      "B"
    when 70...80
      "C"
    when 60...70
      "D"
    else
      "F"
    end
  end
end
physics_grade = Grade.calculate_grade([78,92,90])
chemistry_grade = Grade.calculate_grade([90,80,88])
biology_grade = Grade.calculate_grade([99,90,98])

ReportCard.issue("Joe", physics_grade, chemistry_grade, biology_grade)
