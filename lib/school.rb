class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(new_student, which_grade)
    if @roster.has_key?(which_grade)
      @roster[which_grade] << new_student
    else
      @roster[which_grade] = []
      @roster[which_grade] << new_student
    end
  end

  def grade(which_grade)
    @roster[which_grade]
  end

  def sort
    sorted_class = {}
    @roster.each do |grade, students|
      sorted_class[grade] = students.sort
    end
    sorted_class
  end

end
