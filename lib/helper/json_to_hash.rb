require 'json'
PRODUCT_INFO_JSON = 'resource/product_info.json'
DISCOUNT_JSON = 'resource/discount.json'
COUPON_JSON = 'resource/coupon.json'
COUPON_CONDITION = 0
COUPON_AMOUNT = 1

module JsonToHash
  def json_to_hash(input_file)
    json = File.read(input_file) if File::exists? input_file
    begin
      JSON.parse json

    rescue Exception
      puts "file error!"
      false
    end

  end
end