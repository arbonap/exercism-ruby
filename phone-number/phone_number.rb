class PhoneNumber
  def self.clean num
    num.gsub(/[+1() -]*/, '')
  end
end
