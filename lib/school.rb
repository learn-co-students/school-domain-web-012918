require 'pry'
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(level)
    @roster[level]
  end

  def sort
      @roster.each {|k,v| v.sort!}
  end

end
