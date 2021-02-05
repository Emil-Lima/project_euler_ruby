# frozen_string_literal: true

require './lib/special_pythagorean_triplet_iterative'

describe '#special_pythagorean_triplet(num)' do
  it 'return elements of special pythagorean triplet that equal num. Return nil if the triplet does not exist' do
    expect(special_pythagorean_triplet(12)).to eql('a is 3, b is 4 and c is 5.')
  end
  it 'return elements of special pythagorean triplet that equal num. Return nil if the triplet does not exist' do
    expect(special_pythagorean_triplet(25)).to eql(nil)
  end
  it 'return elements of special pythagorean triplet that equal num. Return nil if the triplet does not exist' do
    expect(special_pythagorean_triplet(1000)).to eql('a is 200, b is 375 and c is 425.')
  end
end
