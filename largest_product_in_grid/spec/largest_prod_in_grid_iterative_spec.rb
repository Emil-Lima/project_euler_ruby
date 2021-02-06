# frozen_string_literal: true

require './lib/largest_product_in_grid_iterative'

describe '#str_to_arr(str)' do
  it 'return array of elements from string' do
    expect(str_to_arr('93 83 72 48 92')).to eql(%w[93 83 72 48 92])
  end
end

describe '#elements_to_number(arr)' do
  it 'return elements of array as numbers' do
    expect(elements_to_number(%w[93 83 72 48 92])).to eql([93, 83, 72, 48, 92])
  end
end

describe '#grid_of_array(arr, row_length)' do
  it 'return an array with arrays containing number of elements row_length each' do
    expect(grid_of_array([93, 83, 72, 48, 92], 2)).to eql([[93, 83], [72, 48], [92]])
  end
  it 'return an array with arrays containing number of elements row_length each' do
    expect(grid_of_array(elements_to_number(%w[12 92 09 82 71 11]),
                         3)).to eql([[12, 92, 9], [82, 71, 11]])
  end
  it 'return an array with arrays containing number of elements row_length each' do
    expect(grid_of_array(elements_to_number(str_to_arr('35, 53, 23, 53, 23, 12')),
                         1)).to eql([[35], [53], [23], [53], [23], [12]])
  end
end

describe '#right_up(arr, num_elements)' do
  it 'return product of num_elements diagonal up' do
    expect(right_up([[2, 2], [2, 2], [3, 2]], 2)).to eql(6)
  end
  it 'return product of num_elements diagonal up' do
    expect(right_up([[1, 0], [0, 0], [3, 2]], 2)).to eql(0)
  end
  it 'return product of num_elements diagonal up' do
    expect(right_up([[1, 0, 9, 2], [0, 0, 2, 2], [3, 2, 9, 9], [2, 3, 3]], 3)).to eql(54)
  end
  it 'return product of num_elements diagonal up' do
    expect(right_up([[23, 4, 30, 93, 0], [3, 0, 9, 1, 2], [12, 22, 9, 0, 0]], 3)).to eql(18_414)
  end
  it 'return product of num_elements diagonal up' do
    expect(right_up([[23, 4, 30, 93, 0], [3, 0, 9, 1, 2], [12, 22, 9, 0, 0]], 1)).to eql(93)
  end
  it 'return product of num_elements diagonal down' do
    expect(right_up([[93, 83], [72, 48], [92]], 2)).to eql(5976)
  end
end

describe '#right_down(arr, num_elements)' do
  it 'return product of num_elements diagonal down' do
    expect(right_down([[93, 83], [72, 48], [92]], 2)).to eql(4464)
  end
  it 'return product of num_elements diagonal up' do
    expect(right_down([[23, 4, 30, 93, 0], [3, 0, 9, 1, 2], [12, 22, 9, 0, 0]], 3)).to eql(0)
  end
  it 'return product of num_elements diagonal up' do
    expect(right_down([[23, 4, 30, 93, 0], [3, 0, 9, 1, 2], [12, 22, 9, 0, 80]], 3)).to eql(2400)
  end
end

describe '#down(arr, num_elements)' do
  it 'return product of num_elements vertical' do
    expect(down([[93, 83], [72, 48], [92]], 2)).to eql(6696)
  end
  it 'return product of num_elements diagonal up' do
    expect(down([[1, 0, 9, 2], [0, 0, 2, 2], [3, 2, 9, 9], [2, 3, 3]], 3)).to eql(162)
  end
  it 'return product of num_elements diagonal up' do
    expect(down([[23, 4, 30, 93, 0], [3, 0, 9, 1, 2], [12, 22, 9, 0, 0], [2, 10, 100, 9, 1]], 4)).to eql(243_000)
  end
end

describe '#right(arr, num_elements)' do
  it 'return product of num_elements horizontal' do
    expect(right([[93, 83], [72, 48], [92]], 2)).to eql(7719)
  end
  it 'return product of num_elements horizontal' do
    expect(right([[1, 99, 9, 2], [0, 1, 2, 2], [3, 2, 9, 9], [2, 3, 3]], 3)).to eql(1782)
  end
  it 'return product of num_elements horizontal' do
    expect(right([[23, 4, 30, 93, 0], [3, 0, 9, 1, 2], [12, 22, 9, 0, 0], [2, 10, 100, 9, 1]], 4)).to eql(256_680)
  end
end

describe '#largest_product(grid, row_length, num_elements)' do
  it 'return largest product in a grid' do
    expect(largest_product('70 83 72 92 92', 2,
                           2)).to eql("The largest diagonal product is: 8464.
The largest vertical product is: 7636. The largest horizontal product is: 6624.")
  end
  it 'return largest product in a grid' do
    expect(largest_product('70 83 72 92 92 29 03 38 19 47 00 23', 3,
                           3)).to eql("The largest diagonal product is: 122360.
The largest vertical product is: 290168. The largest horizontal product is: 418320.")
  end
end
