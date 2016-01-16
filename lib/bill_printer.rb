require_relative 'cart'
class BillPrinter

  def input_list(buy_list)
    @biller = "=============== 账单 ================\n商品  |  数量  |  单价\n"
    print_products(buy_list)
  end

  def print_bill
    check_out
    @biller = @biller +'====================================='
    puts @biller
  end


  private

  def print_products(buy_list)
    buy_list.each do |key, value|
      'time' == key ? print_time(value) : print_product(key, value)
    end
  end

  def print_product(product_name, quantity)
    product = Product.new
    @biller += "#{product_name}    #{quantity}    #{product.get_price(product_name)}\n"
  end

  def print_time(quantity)
    @biller += "\n日期 : #{quantity}\n"
  end

  def check_out
    @biller += "总计 : #{Cart.new.check_out(get_buy_list).to_s}\n"
  end

end