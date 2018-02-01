require 'pry'


class School

attr_reader :roster

def initialize(school)
  @school = school
  @roster = {}
end

def add_student(student, grade)
  if roster.key?(grade)
    roster[grade] << student
  else
    roster[grade] = [student]
  end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, student|
    student.sort!
  end
  #roster.sort_by {|v,k| [v,k] }.to_h
  #sorted_roster = Hash[roster.sort_by {|grade, student| [grade, student] }]
end



end


#take in a student and a grade
#add the grade as a key to the hash
#add the student as the value to the key




end
