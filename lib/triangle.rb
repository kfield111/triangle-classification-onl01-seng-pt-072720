require 'pry'

class Triangle
    attr_accessor :side_one, :side_two, :side_three


  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

# binding.pry

  def kind
    if (side_one == side_two) && (side_two == side_three)
      :equilateral
    elsif side_one == side_two && side_one != side_three
      :isosceles
    elsif side_one == side_three && side_one != side_two
      :isosceles
    elsif side_two == side_three && side_one != side_two
      :isosceles
    elsif (side_one + side_two + side_three <= 0)
      raise TriangleError
    elsif side_one + side_two < side_three || side_two + side_three < side_one || side_one + side_three < side_two
      raise TriangleError
    else
      :scalene
    end
  end


  class TriangleError < StandardError

  end

end
