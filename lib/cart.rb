require_relative 'discount'
require_relative 'coupon'
require_relative 'helper/initialize_data'
include InitializeData

class Cart
  def initialize
    @result = 0
  end

  def check_out(buy_list)
    @buy_list = buy_list
    @buy_list.each do |product_name, quantity|
      sum_price(product_name, quantity)
    end
    get_coupon
    @result.round(2)
  end


  private

  def sum_price(product_name, quantity)
    category = Product.new
    @result += category.get_price(product_name)*quantity.to_i*get_discount(product_name)
  end

  def get_discount(product_name)
    Discount.new.get_discount_rate(product_name, @buy_list["time"])
  end

  def get_coupon
    if (@buy_list["time"])
      coupon_condition = Coupon.new.calculate_coupon(@buy_list["time"])
      @result -= coupon_condition[COUPON_AMOUNT] if @result > coupon_condition[COUPON_CONDITION]
    end
  end
end