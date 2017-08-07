class School

  attr_reader :school_db

  def initialize
    @school_db = Hash.new { [] } #default value is array
  end

  def add(name, grade)
    school_db[grade] <<= name
  end

  def students grade
    school_db[grade]
  end
end
