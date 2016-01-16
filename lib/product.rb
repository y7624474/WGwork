require_relative 'helper/initialize_data'
include InitializeData

class Product

  def method_missing(method, *input_element)
    return handle_get(method,input_element)
  end


  private

  def handle_get(method,input_element)
    get_product_info.each do |product_category, lists|
      lists.each do |product_name, product_price|
        return product_category if product_name == input_element.last and method.to_s.include? 'category'
        return product_price.to_f if product_name == input_element.last and method.to_s.include? 'price'
      end
    end
    return 0
  end

end