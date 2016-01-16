require_relative 'product'

class Discount

  def get_discount_rate(product_name, buy_time)
    get_discount_info.each do |discount_time, discount_category|
      return have_discount(product_name, discount_category) if discount_time == buy_time
    end
    NO_DISCOUNT
  end


  private

  def have_discount(product_name, discount_category)
    discount_category.each do |category, discount_rate|
      return discount_rate.to_f if category == Product.new.get_category(product_name)
    end
    NO_DISCOUNT
  end

end