require 'rspec'
require_relative '../lib/calculator'

describe Calculator do

  describe "calculate correct buy one thing" do
    let(:calculator) { Calculator.new({"ipad" => "1"}) }
    it 'should calculate correct result when give buy a product with quantity' do
      expect(calculator.calculate).to eq(2399.00)
    end
  end

  describe "calculate no exist product" do
    let(:calculator) { Calculator.new({"notexist" => "1"}) }
    it 'should calculate correct result when give buy a product which not exist' do
      expect(calculator.calculate).to eq(0.00)
    end
  end

  describe "calculate correct buy more thing" do
    let(:calculator) { Calculator.new({"notexist" => "1", "bread" => "2"}) }
    it 'should calculate correct result when give products include not exist product' do
      expect(calculator.calculate).to eq(18.00)
    end
  end

  describe "test case 1" do
    let(:calculator) { Calculator.new({"time" => "2014.01.01", "vegetable" => "3", "paper" => "8"}) }
    it 'should calculate correct result when test case 1' do
      expect(calculator.calculate).to eq(43.54)
    end
  end

  describe "test case 2" do
    let(:calculator) { Calculator.new({"time" => "2013.11.11", "ipad" => "1", "display" => "1", "beer" => "12", "bread" => "5"}) }
    it 'should calculate correct result when test case 2' do
      expect(calculator.calculate).to eq(3083.60)
    end
  end

  describe "test case 3" do
    let(:calculator) { Calculator.new({"time" => "2014.05.01", "ipad" => "1", "display" => "1", "vegetable" => "5"}) }
    it 'should calculate correct result when test case 3' do
      expect(calculator.calculate).to eq(3802.12)
    end
  end

  describe "test case 4" do
    let(:calculator) { Calculator.new({"time" => "2013.05.01", "ipad" => "1", "display" => "1", "vegetable" => "5"}) }
    it 'should calculate correct result when test case 4' do
      expect(calculator.calculate).to eq(3602.12)
    end
  end
end
