require 'date'
require 'time'

class Gigasecond
    def self.from (birthday)
        birthday + 10**9
    end
end

module BookKeeping
    VERSION = 3
end