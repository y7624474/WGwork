require 'rspec'
require_relative '../lib/discount'

describe Discount do

  let(:discount) { Discount.new }

  describe 'no discount' do
    it 'should return 1 when no discount with the product not exist' do
      expect(discount.rate("notexist","2014.01.12")).to eq(1)
    end

    it 'should return 1 when no discount without festival' do
      expect(discount.rate("ipad","2014.01.12")).to eq(1)
    end
  end

  describe 'have discount' do
    it 'should return discount 0.7 when buy the electronic product at festival' do
      expect(discount.rate("ipad","2013.11.11")).to eq(0.7)
    end
  end


end