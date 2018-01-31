class School


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)

    if @roster[grade] == nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end

  end

  def grade(grade)
    @roster.each do |g, n|
      if g == grade
        return n
      end
    end
  end

  def sort
    @roster.each do |g, n|
      n.sort!
    end
  end
end
