require_relative 'helper/initialize_data'
include InitializeData

class Product

  def get_category(input_product)
    get_product_info.each do |product_category, lists|
      lists.each do |product_name, price|
        return product_category if product_name == input_product
      end
    end
    return nil
  end

  def get_price(input_product)
    get_product_info.each do |product_category, lists|
      lists.each do |product_name, price|
        return price.to_f if product_name == input_product
      end
    end
    return 0
  end
end