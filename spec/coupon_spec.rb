require 'rspec'
require_relative '../lib/coupon'
describe Coupon do

  let(:coupon) { Coupon.new }

  it 'coupon should be not useful with wrong time format ' do
    expect(coupon.calculate_coupon('2512.12/')).to eq([0,0])
  end

  it 'coupon should be not useful with past due ' do
    expect(coupon.calculate_coupon('2015.12.12')).to eq([0,0])
  end

  it 'coupon should be useful' do
    expect(coupon.calculate_coupon('2012.12.12')).to eq([1000,200])
  end
end