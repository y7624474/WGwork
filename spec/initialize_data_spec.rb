require 'rspec'
require_relative '../lib/helper/initialize_data'
include InitializeData

describe InitializeData do

  # it 'should puts error when file not exist' do
  #   expect(cart.check_out).to eq(false)
  # end
  #
  #
  # describe 'test input file format error' do
  #   it 'should puts error when json file error' do
  #     let(:cart) { Cart.new('resource/error.json') }
  #     expect(cart.check_out).to eq(false)
  #   end
  # end
  #
  # describe 'test input file' do
  #   it 'should add product to cart' do
  #     let(:cart) { Cart.new('resource/input.json') }
  #     expect(cart.check_out["ipad"]).to eq("1")
  #   end
  # end
end