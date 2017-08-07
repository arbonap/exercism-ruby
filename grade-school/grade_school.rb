require 'pry'
class School

  attr_reader :school_db

  def initialize
    @school_db = Hash.new { [] } #default value is array
  end

  def add(name, grade)
    school_db[grade] <<= name
  end

  def students grade
    school_db[grade].sort #sort this list
  end

  def students_by_grade
    school_db.map{|k, v| {:grade => k, :students => v.sort!}}.sort_by! {|k, v| k[:grade]}
  end

end

module BookKeeping
  VERSION = 3
end
