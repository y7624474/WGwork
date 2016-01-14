require 'json'
INFO = 'product_info.json'
DISCOUNT = 'discount.json'

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