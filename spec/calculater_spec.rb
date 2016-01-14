require 'rspec'
require_relative '../lib/calculater'

describe Calculater do

  let(:calculater){Calculater.new([{"ipad" =>"1"}])}
  it 'should calculate correct result when give buy a product with quantity' do
      expect(calculater.calculate).to eq(2000)
  end
end