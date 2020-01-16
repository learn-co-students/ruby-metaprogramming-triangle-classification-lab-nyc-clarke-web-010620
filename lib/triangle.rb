class Triangle
  # write code here

  attr_accessor :s1, :s2, :s3

def initialize(s1, s2, s3)
  @s1 = s1
  @s2 = s2
  @s3 = s3

end

def kind
  

  if s1 < 0 || s2 < 0 || s3 < 0 || s1 * s2 * s3 == 0
    raise TriangleError
  elsif s1 == s2 && s1 == s3 && s2 == s3
    checkforerror
    :equilateral
  elsif s1 == s2 || s1 == s3 || s2 == s3
    checkforerror
    :isosceles
  elsif !(s1 == s2) && !(s1 == s3)
    checkforerror
    :scalene
  end
  

end
def checkforerror
    if s1 + s2 < s3 || s2 + s3 < s1 || s1 + s3 == s2
        raise TriangleError
    end
end


class TriangleError < StandardError

    "A side of a triangle cannot be less than 0"
  
end

end
