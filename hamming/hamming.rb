
class Hamming
    def self.compute(strand1, strand2)
        raise ArgumentError if strand1.length != strand2.length

        differences = 0

        length = strand1.length

        length.times do |index|
            if strand1[index] != strand2[index]
                differences += 1
            end

        end
        differences
    end
end

module BookKeeping
    VERSION = 3
end