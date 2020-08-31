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
    if ((side_one == side_two) && (side_one == side_three) && (side_two == side_three))
      :equilateral
    elsif ((side_one == side_two) && ((side_one || side_two != side_three))
      :isosceles
    elsif ((side_one == side_three) && ((side_one || side_three != side_two))
      :isosceles
    elsif ((side_two == side_three) && ((side_two || side_three != side_one))
      :isosceles
    else
      :scalene
    end
  end

end
