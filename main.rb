require_relative 'lib/cart'
require_relative 'lib/calculater'

list = Cart.new.add_product('input.json')
puts Calculater.new(list).calculate if list