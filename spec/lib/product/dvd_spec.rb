require "spec_helper"
require "./lib/product/dvd"

class DVDSpec

  describe DVD do
    it 'all_attr_initialzed' do
      dvd = DVD.new('A great DVD', 3000, 120)
      expect(dvd.name).to eq 'A great DVD'
      expect(dvd.price).to eq 3000
      expect(dvd.running_time).to eq 120
    end
  end
end