# Calculate the Hamming difference between two DNA strands.
# Distance in long strands not working, since uniq method is deleting elements 


class Hamming
  def self.compute(str1 , str2)
    if str1 == str2  
      return 0
    elsif str1.length != str2.length 
      raise ArgumentError.new
    else
      hamming_dist = 0
      a = str1.split('')
      b = str2.split('')
      c =  a.zip(b)
      
    end
  end
end
