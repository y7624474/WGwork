require 'rspec'
require_relative '../lib/category'
describe Category do

  let(:category) { Category.new }

  it 'should get no category when give a not exist product' do
    expect(category.get_category("notexist")).to eq(nil)
  end

  it 'should get category when give a product' do
    expect(category.get_category("ipad")).to eq("electronic")
  end

  it 'should no price when give a not exist product' do
    expect(category.get_price("notexist")).to eq(0.00)
  end

  it 'should get price when give a product' do
    expect(category.get_price("ipad")).to eq(2399.00)
  end
end