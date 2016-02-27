class Squares

  VERSION = 2

  def initialize(number)
    @number = number
  end

  def square_of_sum
    sum = @number * (@number + 1) / 2
    sum ** 2
  end

  def sum_of_squares
    (0..@number).inject { |sum_of_square, number| sum_of_square + number ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

end
