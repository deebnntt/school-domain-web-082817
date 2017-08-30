
class School


  attr_accessor :name, :roster, :student

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
   if @roster[grade]
      @roster[grade]<< name
    else
      @roster[grade] = []
      @roster[grade]<< name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map {|grade, name| [grade,name.sort] }.to_h
  end

end
