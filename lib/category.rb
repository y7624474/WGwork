require_relative 'helper/json_to_hash'
include JsonToHash
class Category
  def get_category(input_product)
    json_to_hash(INFO).each do |key, values|
      values.each do |k, value|
        return key if k == input_product
      end
    end
  end

  def get_price(input_product)
    json_to_hash(INFO).each do |key, values|
      values.each do |k, value|
        return value.to_f if k == input_product
      end
    end
    return 0
  end
end