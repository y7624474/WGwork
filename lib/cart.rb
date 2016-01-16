require_relative 'discount'
require_relative 'coupon'
require_relative 'helper/initialize_data'
include InitializeData

class Cart

  def initialize
    @output_price = 0
  end

  def check_out(buy_list)
    @buy_list = buy_list

    total_price
    use_coupon.round(2)
  end


  private

  def total_price
    @buy_list.each do |product_name, quantity|
      sum_price(product_name, quantity)
    end
  end

  def sum_price(product_name, quantity)
    category = Product.new
    @output_price += category.get_price(product_name) * quantity.to_i * get_discount(product_name)
  end

  def get_discount(product_name)
    Discount.new.get_discount_rate(product_name, @buy_list['time'])
  end

  def use_coupon
    if (@buy_list['time'])
      Coupon.new.calculate_coupon(@buy_list['time'], @output_price)
    else
      @output_price
    end
  end

end