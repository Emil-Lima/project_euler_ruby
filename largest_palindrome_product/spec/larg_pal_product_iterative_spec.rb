# frozen_string_literal: true

require './lib/largest_palindrome_product_iterative'

describe '#largest_palindrome_product' do
  it 'returns largest product that is a palindrome' do
    expect(largest_palindrome_product).to eql(906_609)
  end
end
