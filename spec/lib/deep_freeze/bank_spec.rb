require 'rspec'
require './lib/deep_freeze/bank'

context Bank do

  it 'Deep frozen' do
    aggregate_failures 'Deep frozen' do
      expect(Bank::CURRENCIES.frozen?).to eq true
      expect(Bank::CURRENCIES.all?{|key, value| key.frozen? && value.frozen?}).to eq true
    end
  end
end