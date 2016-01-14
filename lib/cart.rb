require_relative 'helper/json_to_hash'
include JsonToHash

class Cart
  def add_product(input_file)
    json_to_hash(input_file)
  end


end