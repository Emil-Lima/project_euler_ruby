# frozen_string_literal: true

def sum_square_difference(num)
  sum_of_squares = 0
  square_of_sum = 0
  while num.positive?
    sum_of_squares += num**2
    square_of_sum += num
    num -= 1
  end
  square_of_sum **= 2
  square_of_sum - sum_of_squares
end
