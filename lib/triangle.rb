class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3, :type
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @type = type
  end
  
  def kind
    triangle_valid
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def triangle_valid
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end
  end

  
  def kind 
  if   
    begin 
    raise TriangleError => error 
    rescue TriangleError 
      puts error 
    end
  else
    self.type
    
  end
  
  class TriangleError < StandardError
  end
end
