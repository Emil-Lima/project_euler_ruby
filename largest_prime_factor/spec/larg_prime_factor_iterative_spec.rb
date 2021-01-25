# frozen_string_literal: true

require './lib/largest_prime_factor_iterative'

describe '#largest_prime_factor(num)' do
  it 'return largest prime factor of num' do
    expect(largest_prime_factor(13_195)).to eql(29)
  end
  it 'return largest prime factor of num' do
    expect(largest_prime_factor(20)).to eql(5)
  end
end
