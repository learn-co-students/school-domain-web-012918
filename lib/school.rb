# code here!
require 'pry'
class School

def initialize(name)
  @name = name
  @roster ={}
end

def roster
  @roster
end

def add_student(name, grade)
  #binding.pry
  if @roster[grade]
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
  end
end

def grade(num)
  @roster[num]
end

def sort
  sorted = @roster.each do |key, value|
    @roster[key] = value.sort
  end
end

end
