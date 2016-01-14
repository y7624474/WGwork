require_relative 'lib/cart'
require_relative 'lib/calculator'

list = Cart.new.add_product('input.json')
puts Calculator.new(list).calculate if list