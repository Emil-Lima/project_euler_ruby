require './lib/highly_divisible_triangular_number_iterative'

describe '#sum_getter(tri_num)' do
  it 'return sum from 0 up to tri_num' do
    expect(sum_getter(3)).to eql(6)
  end
  it 'return sum from 0 up to tri_num' do
    expect(sum_getter(7)).to eql(28)
  end
  it 'return sum from 0 up to tri_num' do
    expect(sum_getter(0)).to eql(0)
  end
end

describe '#divisor_getter(num)' do
  it 'return array with divisors of num' do
    expect(divisor_getter(5)).to eql([1])
  end
  it 'return array with divisors of num' do
    expect(divisor_getter(10)).to eql([1, 2, 5])
  end
  it 'return array with divisors of num' do
    expect(divisor_getter(1)).to eql([1])
  end
end

describe '#highly_div_tri_num(num_divisors)' do
  it 'return sequence triangle number with num of divisors == num_divisors' do
    expect(highly_div_tri_num(1)).to eql(1)
  end
  it 'return sequence triangle number with num of divisors >= num_divisors' do
    expect(highly_div_tri_num(2)).to eql(6)
  end
end
