# frozen_string_literal: true

require './lib/even_fibonacci_numbers_iterative'

describe '#sum_of_even(n)' do
  it 'returns sum of even fibonacci numbers' do
    expect(even_fibonacci_sum(5)).to eql(2)
  end
  it 'returns sum of even fibonacci numbers' do
    expect(even_fibonacci_sum(2)).to eql(0)
  end
  it 'returns sum of even fibonacci numbers' do
    expect(even_fibonacci_sum(10)).to eql(10)
  end
  it 'returns sum of even fibonacci numbers' do
    expect(even_fibonacci_sum(50)).to eql(44)
  end
end
