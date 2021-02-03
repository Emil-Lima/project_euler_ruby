require './lib/nth_number_iterative'

describe '#nth_number(num)' do
  it 'return prime number in position num' do
    expect(nth_number(6)).to eql(13)
  end
  it 'return prime number in position num' do
    expect(nth_number(100)).to eql(541)
  end
  it 'return prime number in position num' do
    expect(nth_number(500)).to eql(3571)
  end
  it 'return prime number in position num' do
    expect(nth_number(1)).to eql(2)
  end
end
