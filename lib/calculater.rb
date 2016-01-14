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
       @result+=category.get_price(k)*v.to_i
      end
    end
    @result
  end
end