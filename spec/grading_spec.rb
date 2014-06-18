require 'rspec'
require 'grading'

describe 'grading' do
  it 'describes a difference in grades' do
    grades = Grading.new
    actual = grades.differences([6, 3, 5, 4, 3, 4, 4, 5])
    expected = [:down, :up, :down, :down, :up, :even, :up]
    expect(actual).to eq(expected)
  end
end
