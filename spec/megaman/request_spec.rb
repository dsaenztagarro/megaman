require 'spec_helper'

describe Megaman::Request do
  let(:message) do
    { 'filename' => '/Users/dst/.vim/bundle/megaman/plugin/megaman.vim' }
  end

  let(:vim_request) { "[1, #{message.to_json.to_json}]" }
  let(:subject) { described_class.new(vim_request) }

  describe '#number' do
    it 'returns the VIM request number' do
      expect(subject.number).to eq(1)
    end
  end

  describe '#body' do
    it 'returns the VIM request body as JSON' do
      expect(subject.body).to eq(message)
    end
  end
end
