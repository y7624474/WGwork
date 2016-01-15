require 'rspec'
require_relative '../lib/cart'

describe Cart do

  let(:cart) { Cart.new }

  context 'calculate correct buy one thing' do
    it 'should calculate correct result when give buy a product with quantity' do
      expect(cart.check_out({"ipad" => "1"})).to eq(2399.00)
    end
  end

  context 'calculate no exist product' do
    it 'should calculate correct result when give buy a product which not exist' do
      expect(cart.check_out({"notexist" => "1"})).to eq(0.00)
    end
  end

  context 'calculate correct buy more thing' do
    it 'should calculate correct result when give products include not exist product' do
      expect(cart.check_out({"notexist" => "1", "bread" => "2"})).to eq(18.00)
    end
  end

  context 'test case 1' do
    it 'should calculate correct result when test case 1' do
      expect(cart.check_out({"time" => "2014.01.01", "vegetable" => "3", "paper" => "8"})).to eq(43.54)
    end
  end

  context 'test case 2' do
    it 'should calculate correct result when test case 2' do
      expect(cart.check_out({"time" => "2013.11.11", "ipad" => "1", "display" => "1", "beer" => "12", "bread" => "5"})).to eq(3083.60)
    end
  end

  context 'test case for discount' do
    it 'should calculate correct result when test case 3' do
      expect(cart.check_out({"time" => "2014.05.01", "ipad" => "1", "display" => "1", "vegetable" => "5"})).to eq(3802.12)
    end
  end

  context 'test case for discount and coupon' do
    it 'should calculate correct result when test case 4' do
      expect(cart.check_out({"time" => "2013.05.01", "ipad" => "1", "display" => "1", "vegetable" => "5"})).to eq(3602.12)
    end
  end
end