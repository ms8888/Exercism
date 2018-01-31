# Add 1 billion seconds to the current date given by the 
# Time.utc method in the test script.

# GIG_CONST = 1_000_000_000 used for readability
GIG_CONST = 1000000000

class Gigasecond
  def self.from(time)
    time + GIG_CONST
  end
end


# Used for exercism.io version control of problem 
module BookKeeping
  VERSION = 6
end