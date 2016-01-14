require 'rspec'
require_relative '../lib/calculator'

describe Calculator do

  describe "calculate correct buy one thing" do
    let(:calculater) { Calculator.new({"ipad" => "1"}) }
    it 'should calculate correct result when give buy a product with quantity' do
      expect(calculater.calculate).to eq(2399.00)
    end
  end

  describe "calculate no exist product" do
    let(:calculater) { Calculator.new({"ipd" => "1"}) }
    it 'should calculate correct result when give buy a product which not exist' do
      expect(calculater.calculate).to eq(0.00)
    end
  end

  describe "calculate correct buy more thing" do
    let(:calculater) { Calculator.new({"ipd" => "1", "bread" => "2"}) }
    it 'should calculate correct result when give buy a product which not exist' do
      expect(calculater.calculate).to eq(18.00)
    end
  end




  describe "test case 1" do
    let(:calculater) { Calculator.new({"time" => "2014.01.01", "vegetable" => "3", "paper" => "8"}) }
    it 'should calculate correct result when give buy a product which not exist' do
      expect(calculater.calculate).to eq(43.54)
    end
  end
end
