class School

  attr_reader :school_db

  def initialize
    @school_db = Hash.new { [] }
  end

  def add name, grade
    school_db[grade] <<= name
  end

  def students grade
    school_db[grade].sort
  end

  def students_by_grade
    school_db.map do |k, v|
                     {:grade => k, :students => v.sort!}
                  end.sort_by! {|k, v| k[:grade]}
  end

end

module BookKeeping
  VERSION = 3
end
