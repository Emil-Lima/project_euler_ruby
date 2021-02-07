require 'sum_square_difference_iterative'

describe '#sum_square_difference(num)' do
  it 'return difference between sum square numbers up to num and square of sum of numbers up to num' do
    expect(sum_square_difference(10)).to eql(2640)
  end
end
