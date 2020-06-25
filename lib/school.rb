require = 'pry'

class School

  attr_accessor :roster, :name, :grade

  def initialize (roster)
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
     @roster[grade] = [name]
   end
  end

  def grade (grade)
    @roster.each { |year, student|
      if grade == year
        return student
      end
    }
  end

  def sort (roster)
    @roster = roster
    new_roster = {}
    roster.sort { |year, student|
      new_roster[year] = student.sort
    }
  @roster = new_roster
  end

end
