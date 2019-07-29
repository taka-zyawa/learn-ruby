require 'rspec'
require './lib/deep_freeze/team'

context Team do

  it 'Deep frozen' do
    aggregate_failures 'Deep frozen' do
      expect(Team::COUNTRIES.frozen?).to eq true
      expect(Team::COUNTRIES.all?(&:frozen?)).to eq true
    end
  end
end