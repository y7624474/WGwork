require 'rspec'
require_relative '../lib/calculater'

describe Calculater do

  describe "calculate correct buy one thing" do
    let(:calculater) { Calculater.new([{"ipad" => "1"}]) }
    it 'should calculate correct result when give buy a product with quantity' do
      expect(calculater.calculate).to eq(1999)
    end
  end

  describe "calculate no exist product" do
    let(:calculater) { Calculater.new([{"ipd" => "1"}]) }
    it 'should calculate correct result when give buy a product which not exist' do
      expect(calculater.calculate).to eq(0)
    end
  end

  describe "calculate correct buy more thing" do
    let(:calculater) { Calculater.new([{"ipd" => "1"},{"bread"=>"2"}]) }
    it 'should calculate correct result when give buy a product which not exist' do
      expect(calculater.calculate).to eq(6)
    end
  end
end
