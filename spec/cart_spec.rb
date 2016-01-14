require 'rspec'
require_relative '../lib/cart'

describe Cart do
  let(:cart) {Cart.new}
  it 'should add product to cart' do
      expect(cart.add_product('input.json')[0].keys).to eq(["ipad"])
  end


end