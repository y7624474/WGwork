require_relative 'helper/json_to_hash'
include JsonToHash
class Category
  def get_category(input_product)
    json_to_hash(INFO).each do |element|
      element.each do |key, values|
        values.each do |value|
          return element.keys  if value.keys.last == input_product
        end
      end
    end
  end

  def get_price(input_product)
    json_to_hash(INFO).each do |element|
      element.each do |key, values|
        values.each do |value|
          return value.values.last.to_i if value.keys.last == input_product
        end
      end
    end
  end

end