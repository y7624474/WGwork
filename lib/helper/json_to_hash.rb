require 'json'
INFO = 'product_info.json'
module JsonToHash
  def json_to_hash(input_file)
    json = File.read(input_file)
    begin
      JSON.parse json

    rescue Exception
      puts "Jsonfile error!"
      false
    end

  end
end