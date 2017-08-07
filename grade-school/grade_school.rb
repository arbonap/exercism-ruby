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
    grade_dict = {}
    thing = school_db.map do |key, value|
                        grade_dict[:grade] = key
                        grade_dict[:students] = value
                        grade_dict[:students].sort!
    end
    # binding.pry
    grade_dict.empty? ? [] : [grade_dict]
  end

  # def sort
  #   school_db.sort.each_with_object({}) do |grade, student, sorted|
  #
  #     sorted[grade] = student.sort!
  #   end
  # end
  # require 'pry'; binding.pry

end
