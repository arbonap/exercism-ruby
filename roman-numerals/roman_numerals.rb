  ARABIC_TO_ROMAN_MAPPING = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
    class Fixnum
      def to_roman
        arabic_number = self
        roman_numeral = ""

        ARABIC_TO_ROMAN_MAPPING.map { |number, symbol |
          break if arabic_number.zero?

          while arabic_number >= number
            roman_numeral << symbol
            arabic_number -= number
          end
        }
        roman_numeral
      end
    end

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
