require 'pry'
class PhoneNumber
  def self.clean num

    if self.one_or_two?(num[0]) || self.one_or_two?(num[3])
      nil
    elsif num.length == 9
      nil
    elsif num.length == 10
      num.gsub(/[+1() -.]*/, '')
    else
      num.gsub(/[() -.]*/, '')
    end
  end

  private

  def self.one_or_two?(num)
    true if (1..2).to_a.include? num
  end

  def self.sanitize(num)
    num.gsub(/[+1() -.]*/, '')
  end

end
