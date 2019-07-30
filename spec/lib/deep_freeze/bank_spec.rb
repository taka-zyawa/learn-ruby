require 'rspec'
require './lib/deep_freeze/bank'

describe Bank do
  context 'Deep freeze 可能であること' do
    it 'Deep frozen' do
      aggregate_failures 'Deep frozen' do
        expect(Bank::CURRENCIES).to eq ({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'})
        expect(Bank::CURRENCIES.frozen?).to eq true
        expect(Bank::CURRENCIES.all? do |key, value|
          key.frozen? && value.frozen?
        end).to eq true
      end
    end
  end
end
