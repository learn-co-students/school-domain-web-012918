# code here!
class School
  attr_reader :school_name, :roster


def initialize(school_name)
  @school_name = school_name
  @roster = {}
end


def add_student(student_name, grade)
if @roster.keys.include?(grade)
  @roster[grade] << student_name
else
  @roster[grade] = []
  @roster[grade] << student_name
end

end

def grade(grade_number)
  @roster[grade_number]
end

def sort
  sortedroster = {}
  @roster.each do |grade, students|
    sortedroster [grade] = students.sort
  end
  sortedroster
end

end
