require 'json'

module JsonToHash

  def json_to_hash(input_file)
    json = File.read(input_file) if File::exists? input_file

    begin
      JSON.parse json
    rescue Exception
      puts 'File error,please fill the json file like readme template!'
      false
    end

  end

end