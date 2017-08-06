class Array

  def accumulate &block
    output = []
    each do |item|
      if !block_given?
        output.push(item ** 2)
      else
        output << block.call(item)
      end
    end
    output
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end


# module Accumulate
#   def accumulate( &block )
#     # Doesn't use map or collect or etc.
#     return enum_for(:accumulate) unless block_given?
#     modified = []
#     each{ |e| modified << block.call(e) }
#     modified
#   end
# end
#
# Array.class_eval { include Accumulate }
