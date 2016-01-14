require_relative 'discount'

class Calculator

  def initialize(list)
    @list = list
    @result = 0
  end

  def calculate
    @list.each do |product_name, quantity|
      sum_price(product_name, quantity)
    end
    @result.round(2)
  end

  private

  def sum_price(product_name, quantity)
    category = Category.new
    @result+=category.get_price(product_name)*quantity.to_i*get_discount(product_name)
  end

  def get_discount(product_name)
    Discount.new.rate(product_name, @list["time"])
  end
end