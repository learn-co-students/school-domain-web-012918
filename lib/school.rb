require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    new_hash = {}
    @roster.each do |grade,students|
      new_hash[grade] = students.sort
    end
    new_hash
  end
end
