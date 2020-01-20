class Triangle
  attr_accessor :kind

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @kind = "triangle"
  end

  def kind
    if @length1 + @length2 <= @length3 || @length1 + @length3 <= @length2 || @length2 + @length3 <= @length1
      raise TriangleError
    elsif @length1 <= 0 || @length2 <= 0 || @length3 <= 0
      raise TriangleError
    elsif @length1 == @length2 && @length2 == @length3
      @kind = :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
      @kind = :isosceles
    elsif @length1 != @length2 && @length2 != @length3
      @kind = :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a triangle"
    end
  end
end
