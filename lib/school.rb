require 'pry'

class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name

    else
      @roster[grade] = [student_name]
    end
  end

  def grade(n)
    @roster[n]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end
  end

end
