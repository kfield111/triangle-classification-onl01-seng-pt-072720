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
    all_sides = [side_one, side_two, side_three]
    sides = all_sides.unig
    type = case sides.length
    when 1 then :equilateral
    when 2 then :isosceles
    when 3 then :scalene
    end
  end

end
