# code here!

class School
  attr_accessor :name
  attr_reader :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each{ |grade, students|
      students.sort!
    }
  end

end
