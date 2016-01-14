require_relative 'category'
include JsonToHash

class Calculater

  def initialize(list)
    @list = list
    @result = 0
  end

  def calculate
    category = Category.new
    @list.each do |list|
      list.each do |k, v|
       sum_price(category, k, v)
      end
    end
    @result
  end

  def sum_price(category, product_name, quanlity)
    @result+=category.get_price(product_name)*quanlity.to_i
  end
end