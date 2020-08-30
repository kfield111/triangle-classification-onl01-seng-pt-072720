class Triangle

  def initialize(side_one:, side_two:, side_three:)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if side_one == side_two == side_three && side_one > && side_two > 0 && side_three >0
      :equilateral
    end

end
