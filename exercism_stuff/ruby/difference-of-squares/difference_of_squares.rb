class Squares 
  def initialize(number)
    @number = number
  end
  
  def square_of_sum
    # sum values in the range of 1 to @number
    # reduce and inject methods are the same 
    (1..@number).reduce(:+)**2 
  end
  
  def sum_of_squares
    # sum is an accumulator where the block value is stored (sum + n**2)
    # n goes through each value in the range 
    (1..@number).reduce { |sum, n| sum + n**2 }
  end
  
  def difference
    return  (square_of_sum - sum_of_squares)
  end
end

module BookKeeping
  VERSION = 4
end