require_relative 'helper/json_to_hash'
include JsonToHash
class Coupon

  def calculate_coupon(time)
    json_to_hash(COUPON_JSON).each do |deadline, coupon_money|
      if deadline > time
        coupon_condition = coupon_money.split('-')
        return coupon_condition[COUPON_CONDITION].to_f,
            coupon_condition[COUPON_AMOUNT].to_f
      end
    end
    return [0,0]
  end

end