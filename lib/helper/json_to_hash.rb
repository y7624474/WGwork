require 'json'
PRODUCT_INFO_JSON = 'product_info.json'
DISCOUNT_JSON = 'discount.json'
COUPON_JSON = 'coupon.json'
COUPON_CONDITION = 0
COUPON_AMOUNT = 1

module JsonToHash
  def json_to_hash(input_file)
    json = File.read(input_file) if File::exists? input_file
    begin
      JSON.parse json

    rescue Exception
      puts "file error!"
      exit
    end

  end
end