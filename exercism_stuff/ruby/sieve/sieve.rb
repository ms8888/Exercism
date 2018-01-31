class Sieve
  
  attr_reader :range
  # initialize max value for the range 
  def initialize(max)
    @limit = max 
    @range = (2..max)
  end

  def primes
    # used to chain two functions together "Monadic Patterns"
    @primes ||= primeCheck
  end
  
  private
  
  def primeCheck
    numbers = range.to_a
    sieveVal = []
    if @limit == 1
      sieveVal
    else
      # continues to check until numbers array is empty 
      while !(numbers.empty?)
        # shift first value and store in target
        target = numbers.shift
        # remaining values % current val 
        # delete the ones that are true
        numbers.reject! {|i| i % target == 0}
        # store the target in the sieveVal array
        sieveVal.push(target)
      end
      # return the final array with primes 
      sieveVal
    end
  end
end
  
