class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :all_sides

  def initialize(side1, side2, side3)
    @side1 = side1 
    @side2 = side2 
    @side3 = side3 
    @all_sides = [side1, side2, side3]
  end 

  def kind
    if !valid_triangle?
        raise TriangleError   
    elsif @all_sides.uniq.count == 1 
      return :equilateral
    elsif @all_sides.uniq.count == 2 
      return :isosceles
    else
      return :scalene
    end 
  end 

  def valid_triangle?
    @side1 > 0 && @side2 > 0 && @side3 > 0 && @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1 
  end 


  class TriangleError < StandardError
  
  end 
end
