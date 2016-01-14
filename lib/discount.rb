require_relative 'category'
NODISCOUNT=1

class Discount
  def rate(product_name, time)
    category = Category.new
    json_to_hash(DISCOUNT).each do |discount_time, products|
      if discount_time == time
        products.each do |product, discount_rate|
          return discount_rate.to_f if product == category.get_category(product_name)
        end
      end
    end
    return NODISCOUNT
  end

  def if_coupon

  end
end