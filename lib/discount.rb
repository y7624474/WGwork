require_relative 'product'

class Discount

  def get_discount_rate(product_name, time)
    product = Product.new
    get_discount_info.each do |discount_time, product_category|
      if discount_time == time
        product_category.each do |category, discount_rate|
          return discount_rate.to_f if category == product.get_category(product_name)
        end
      end
    end
    return NO_DISCOUNT
  end

end