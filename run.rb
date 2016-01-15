require_relative 'lib/cart'
require_relative 'lib/calculator'

input_file = 'resource/input.json'

list = Cart.new.add_product(input_file)

p Calculator.new(list).calculate if list