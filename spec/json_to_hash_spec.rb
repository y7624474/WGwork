require 'rspec'
require_relative '../lib/helper/json_to_hash'
include JsonToHash

describe JsonToHash do

    it 'should puts error when file not exist' do
      expect(json_to_hash('notexist.json')).to eq(false)
    end

    it 'should puts error when json file format error' do
      expect(json_to_hash('input/error.json')).to eq(false)
    end

    it 'should get buy list when correct json' do
      expect(json_to_hash('input/test.json')['ipad']).to eq('1')
    end

end