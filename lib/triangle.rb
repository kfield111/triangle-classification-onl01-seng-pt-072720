require 'pry'

class Triangle
    attr_accessor :side_one, :side_two, :side_three

    @@all_sides = []

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

# binding.pry

  def kind
    if side_one == side_two && side_three
      :equilateral
    elsif side_one == side_two
      :isosceles
    elsif side_one != side_two || side_three
      :scalene
    end
  end

end
