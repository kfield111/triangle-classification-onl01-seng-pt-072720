require 'pry'

class Triangle
    attr_accessor :side_one, :side_two, :side_three

    @@all_sides = []

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @@all_sides << side_one
    @@all_sides << side_two
    @@all_sides << side_three
  end

# binding.pry

  def kind
    if @@all_sides.unique.size < 1
      :equilateral
    end
  end

end
