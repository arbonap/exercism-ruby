module Enumerable
  def keep(&block)
    result = []
    self.each do |item|
      if block.call(item) #is the block is true for this particular item; this returns true or false
        result << item #shovel it into the output array
      end
    end
    result
  end
end
