class Grading
  def differences(grades)
    diff = []
    grades.each_with_index do |grade, index|
      diff << :up if grades[index+1] && grade < grades[index+1]
      diff << :even if grades[index+1] && grade == grades[index+1]
      diff << :down if grades[index+1] && grade > grades[index+1]
    end
    diff
  end
end
