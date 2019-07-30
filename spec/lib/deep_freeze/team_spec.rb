require 'rspec'
require './lib/deep_freeze/team'

describe Team do
  context 'Deep freeze 可能であること' do
    it 'Deep frozen' do
      aggregate_failures 'Deep frozen' do
        expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
        expect(Team::COUNTRIES.frozen?).to eq true
        expect(Team::COUNTRIES.all?(&:frozen?)).to eq true
      end
    end
  end
end