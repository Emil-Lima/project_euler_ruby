# frozen_string_literal: true

require './lib/largest_product_in_a_series_iterative'

describe '#largest_product(fullnum, series)' do
  it 'return highest product possible' do
    expect(largest_product(993_824_973_242_472, 2)).to eql(81)
  end
  it 'return highest product possible' do
    expect(largest_product(6_417_634_817_341_888, 1)).to eql(8)
  end
  it 'return highest product possible' do
    expect(largest_product(
             98_324_298_472_389_472_984_729_834_723_894_729_834_787_657_826_578_658_926_578_365_837_265_872_385_328_432_563_728_563_827_564_378_256_236_565_982_475_298_457_634_998_298_457_872_345_985, 3
           )).to eql(648)
  end
end
