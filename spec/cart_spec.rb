require 'rspec'
require_relative '../lib/cart'

describe Cart do
  let(:cart) { Cart.new }

  it 'should puts error when file not exist' do
    expect(cart.add_product('notexist.json')).to eq(false)
  end

  it 'should puts error when json file error' do
    expect(cart.add_product('resource/error.json')).to eq(false)
  end

  it 'should add product to cart' do
    expect(cart.add_product('resource/input.json')["ipad"]).to eq("1")
  end
end