class Year
  def self.leap? year
    return true if year % 400 == 0
    return false if year % 100 == 0
    true if year % 4 == 0
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
