class Raindrops
  def self.convert(number)
    @factor = false 
    three_Factorial(number)
    five_Factorial(number)
    seven_Factorial(number)
    if @factor == true 
      return @pling << @plang << @plong 
    else
      number.to_s 
    end
  end
end

  def three_Factorial(number)
    if number % 3 == 0
      @pling = "Pling"
      @factor = true  
    else
      @pling = ""
    end
  end
  
  def five_Factorial(number)
    if number % 5 == 0
      @plang = "Plang"
      @factor = true 
    else
      @plang = ""
    end
  end  
  
  def seven_Factorial(number)
    if number % 7 == 0
      @plong = "Plong"
      @factor = true 
    else
      @plong = ""
    end
  end