require_relative 'helper/json_to_hash'
include JsonToHash
class Category
  def get_category(input_product)
    json_to_hash(INFO).each do |product_category, lists|
      lists.each do |product_name, price|
        return product_category if product_name == input_product
      end
    end
    return nil
  end

  def get_price(input_product)
    json_to_hash(INFO).each do |product_category, lists|
      lists.each do |product_name, price|
        return price.to_f if product_name == input_product
      end
    end
    return 0
  end
end