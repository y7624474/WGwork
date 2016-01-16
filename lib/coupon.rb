require_relative 'helper/initialize_data'
include InitializeData
class Coupon

  def calculate_coupon(use_time, total_price)
    get_coupon_info.each do |deadline, coupon_condition|
      return use_coupon(coupon_condition, total_price) if deadline > use_time
    end
    return total_price
  end


  private

  def use_coupon(coupon_condition, total_price)
    if total_price >= coupon_condition['consume'].to_f
      total_price -= coupon_condition['privilege'].to_f
      total_price
    else
      total_price
    end
  end

end

