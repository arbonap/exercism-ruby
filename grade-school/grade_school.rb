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
    p school_db.map{|k, v| {:grade => k, :students => v.sort!}}.sort_by {|k, v| k[:grade]}
  end
# grade_dict = {}
# school_db.map{|k, v| p grade_dict[k] = v.sort! }
  # def sort
  #   school_db.sort.each_with_object({}) do |grade, student, sorted|
  #
  #     sorted[grade] = student.sort!
  #   end
  # end
  # require 'pry'; binding.pry

end


# # school_db = {3=>["Deemee", "Eeemee"],
#  1=>["Effmee", "Geemee"],
#  2=>["Aimee", "Beemee", "Ceemee"]}


# [
#   {:grade=>2, :students=>["Aimee", "Beemee", "Ceemee"]},
#   {:grade=>3, :students=>["Deemee", "Eeemee"]}
# ]
