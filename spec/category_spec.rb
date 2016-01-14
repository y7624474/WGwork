require 'rspec'
require_relative '../lib/category'
describe Category do

  let(:category) { Category.new }
  it 'should get category when give a product' do
    expect(category.get_category("ipad")).to eq("electronic")
  end

  it 'should get price when give a product' do
    expect(category.get_price("ipad")).to eq(2399.00)
  end
end