require './lib/smallest_multiple_iterative'

describe '#smallest_multiple(num)' do
  it 'returns the smallest number evenly divisible by all numbers up to num' do
    expect(smallest_multiple(10)).to eql(2520)
  end
  it 'returns the smallest number evenly divisible by all numbers up to num' do
    expect(smallest_multiple(2)).to eql(2)
  end
  it 'returns the smallest number evenly divisible by all numbers up to num' do
    expect(smallest_multiple(1)).to eql(1)
  end
  it 'returns the smallest number evenly divisible by all numbers up to num' do
    expect(smallest_multiple(5)).to eql(60)
  end
end
