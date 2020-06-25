require 'pry'
class School

  attr_reader :model, :roster

  def initialize(model)
    @model = model
    @roster = {}
  end

  def add_student(name, grade)
    #if grade is already there push name into name array
    # else create a new grade with new name array
    @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end
  end

end
