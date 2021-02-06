# frozen_string_literal: true

def str_to_arr(str)
  str.split(' ')
end

def elements_to_number(arr)
  new_arr = []
  arr.each do |element|
    new_arr.push(element.to_i)
  end
  new_arr
end

def grid_of_array(arr, row_length)
  new_arr = []
  until arr.empty?
    new_arr.push(arr.slice(0, row_length))
    row_length.times { arr.shift }
  end
  new_arr
end

def right_up(arr, num_elements)
  result = 0
  arr.each_with_index do |element, index|
    next if arr.index(element) < arr.index(arr[index - num_elements + 1])

    element.each_with_index do |inner_el, inner_index|
      next if arr[index - num_elements + 1][inner_index + num_elements - 1].nil?

      result_holder = inner_el
      outer_index_to_search = num_elements - 1
      inner_index_holder = num_elements - 1
      while outer_index_to_search.positive?
        result_holder *= arr[index - outer_index_to_search][inner_index + inner_index_holder]
        outer_index_to_search -= 1
        inner_index_holder -= 1
      end
      result = result_holder if result_holder > result
    end
  end
  result
end

def right_down(arr, num_elements)
  result = 0
  arr.each_with_index do |element, index|
    next if arr.index(arr[index + num_elements - 1]).nil?

    element.each_with_index do |inner_el, inner_index|
      next if arr[index + num_elements - 1][inner_index + num_elements - 1].nil?

      result_holder = inner_el
      outer_index_to_search = num_elements - 1
      inner_index_holder = num_elements - 1
      while outer_index_to_search.positive?
        result_holder *= arr[index + outer_index_to_search][inner_index + inner_index_holder]
        outer_index_to_search -= 1
        inner_index_holder -= 1
      end
      result = result_holder if result_holder > result
    end
  end
  result
end

def down(arr, num_elements)
  result = 0
  arr.each_with_index do |element, index|
    next if arr.index(arr[index + num_elements - 1]).nil?

    element.each_with_index do |inner_el, inner_index|
      next if arr[index + num_elements - 1][inner_index].nil?

      result_holder = inner_el
      outer_index_to_search = num_elements - 1
      while outer_index_to_search.positive?
        result_holder *= arr[index + outer_index_to_search][inner_index]
        outer_index_to_search -= 1
      end
      result = result_holder if result_holder > result
    end
  end
  result
end

def right(arr, num_elements)
  result = 0
  arr.each_with_index do |element, index|
    element.each_with_index do |inner_el, inner_index|
      next if arr[index][inner_index + num_elements - 1].nil?

      result_holder = inner_el
      inner_index_holder = num_elements - 1
      while inner_index_holder.positive?
        result_holder *= arr[index][inner_index + inner_index_holder]
        inner_index_holder -= 1
      end
      result = result_holder if result_holder > result
    end
  end
  result
end

def largest_product(grid, row_length, num_elements)
  arr = grid_of_array(elements_to_number(str_to_arr(grid)), row_length)
  diagonal_up = right_up(arr, num_elements)
  diagonal_down = right_down(arr, num_elements)
  diagonal = diagonal_up >= diagonal_down ? diagonal_up : diagonal_down
  vertical = down(arr, num_elements)
  horizontal = right(arr, num_elements)
  "The largest diagonal product is: #{diagonal}.
The largest vertical product is: #{vertical}. The largest horizontal product is: #{horizontal}."
end
