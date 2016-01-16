require_relative 'json_to_hash'
include JsonToHash

INPUT_JSON = 'input/input.json'
PRODUCT_INFO_JSON = 'resource/product_info.json'
DISCOUNT_JSON = 'resource/discount.json'
COUPON_JSON = 'resource/coupon.json'
COUPON_CONDITION = 0
COUPON_AMOUNT = 1
NO_DISCOUNT = 1

module InitializeData
  def get_buy_list
    json_to_hash(INPUT_JSON)
  end

  def get_product_info
    json_to_hash(PRODUCT_INFO_JSON)
  end

  def get_discount_info
    json_to_hash(DISCOUNT_JSON)
  end

  def get_coupon_info
    json_to_hash(COUPON_JSON)
  end
end