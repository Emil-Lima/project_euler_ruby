# frozen_string_literal: true

require './summation_of_primes_iterative'

describe '#summation_of_numbers(num)' do
  it 'returns sum of prime numbers up to num' do
    expect(sum_of_primes(10)).to eql(17)
  end
  it 'returns sum of prime numbers up to num' do
    expect(sum_of_primes(5)).to eql(10)
  end
  it 'returns sum of prime numbers up to num' do
    expect(sum_of_primes(1)).to eql(0)
  end
end
