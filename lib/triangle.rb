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
