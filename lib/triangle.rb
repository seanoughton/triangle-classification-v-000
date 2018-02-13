class Triangle
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind()
    #Further, each side must be larger than 0.
    #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
    if (@side_1 == @side_2) && (@side_2 == @side_3)
      :equilateral
    end

    if (@side_1 == @side_2) || (@side_2 == @side_3)
      :isosceles
    end

    #An isosceles triangle is a triangle that has two equal sides.
    #An equilateral triangle is a triangle that has three equal sides
    #Scalene triangle: A scalene triangle is a triangle that has no equal sides.
    #returns, as a symbol, its type :equilateral, :isosceles, :scalene
  end

end

class TriangleError < StandardError
  # triangle error code
end
