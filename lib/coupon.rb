require_relative 'helper/initialize_data'
include InitializeData
class Coupon

  def calculate_coupon(time)
    get_coupon_info.each do |deadline, coupon_money|
      if deadline > time
        coupon_condition = coupon_money.split('-')
        return coupon_condition[COUPON_CONDITION].to_f,
            coupon_condition[COUPON_AMOUNT].to_f
      end
    end
    return NO_COUPON
  end

end