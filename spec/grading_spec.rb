require 'rspec'
require 'grading'

describe 'grading' do
  it 'describes a difference in grades' do
    grades = Grading.new
    actual = grades.differences([6, 3, 5, 4, 3, 4, 4, 5])
    expected = [:down, :up, :down, :down, :up, :even, :up]
    expect(actual).to eq(expected)
  end

  it 'states that a student is in decline when they have three declining grades in a row' do
    grades = Grading.new
    actual = grades.decline?([10, 9, 8, 7])
    expected = true
    expect(actual).to eq(expected)
  end

  it 'states that a student is in decline when the have a trend of three declining grades (interspersed with evens)' do
    grades = Grading.new
    actual = grades.decline?([10, 10, 10, 9, 9, 8, 8, 8, 8, 7])
    expected = true
    expect(actual).to eq(expected)
  end

  it 'states that a student is not in decline when they have an inclinging grade after three declines' do
    grades = Grading.new
    actual = grades.decline?([10, 9, 8, 7, 8])
    expected = false
    expect(actual).to eq(expected)
  end

  it 'states that a student is not in decline when they have a trend of two declines' do
    grades = Grading.new
    actual = grades.decline?([10, 9, 8])
    expected = false
    expect(actual).to eq(expected)
  end
end
