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

  def decline?(grades)
    diffs = differences(grades)
    down_in_row = 0
    diffs.each do |diff|
      down_in_row += 1 if diff == :down
      down_in_row = 0 if diff == :up
    end
    down_in_row >= 3
  end

end
