require 'spec_helper'

describe Megaman::Response do
  describe '#to_s' do
    it 'returns the expected value' do
       request = double('Megaman::Request', number: 3)
       message = { content: 'content' }
       response = described_class.new(request, message)
       expect(response.to_s).to eq("[3,\"{\\\"content\\\":\\\"content\\\"}\"]")
    end
  end
end
