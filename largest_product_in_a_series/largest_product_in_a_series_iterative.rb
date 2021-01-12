# frozen_string_literal: true

def largest_product(num, series)
  result = 1
  right_numbers = []
  arr_of_numbers = num.to_s.split('')
  arr_of_numbers.each_with_index do |_el, index|
    temporary_numbers = []
    temporary_result = 1
    unless arr_of_numbers[index + series].nil?
      count = 0
      while count < series
        temporary_result *= arr_of_numbers[index + count].to_i
        temporary_numbers.push(arr_of_numbers[index + count])
        count += 1
      end
    end
    if temporary_result > result
      result = temporary_result
      right_numbers = temporary_numbers
    end
  end
  result
end
