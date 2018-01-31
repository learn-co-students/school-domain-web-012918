# code here!
class School
  attr_reader :roster, :add_student

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, roster)
    @add_student
    unless @roster[roster]
      @roster[roster] = []
      @roster[roster] << student
    else
      @roster[roster] << student
    end
  end

  def grade(roster)
    @roster[roster]
  end

  def sort
    @roster.sort_by{|grade, student_arr|
      @roster[grade].sort!
      grade
    }.to_h
  end
end
