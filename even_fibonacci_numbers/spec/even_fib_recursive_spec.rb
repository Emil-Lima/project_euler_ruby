# frozen_string_literal: true

require './lib/even_fibonacci_numbers_recursive'

describe '#sum_of_even(num)' do
  it 'returns sum of even fibonacci numbers' do
    expect(sum_of_even(0)).to eql(0)
  end
  it 'returns sum of even fibonacci numbers' do
    expect(sum_of_even(10)).to eql(10)
  end
end
