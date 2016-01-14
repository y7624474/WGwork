require 'json'
INFO = 'product_info.json'
module JsonToHash
  def json_to_hash(input_file)
    json = File.read(input_file)
    JSON.parse json
  end
end