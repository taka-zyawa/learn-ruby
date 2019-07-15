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

    it 'to_s' do
      dvd = DVD.new('A great DVD', 3000, 120)
      expect(dvd.to_s).to eq '[A great DVD] [Price : 3000] [Running time : 120 minute]'
    end

    it 'can_private_call' do
      dvd = DVD.new('A great movie', 1000, 120)
      expect(dvd.private_call).to eq 'Sub Private -> [A great movie] [Price : 1000] [Running time : 120 minute]'
    end

    it 'can_static_method_call' do
      expect(DVD.static_method).to eq 'Call static method'
    end

    # TODO 後で例外処理を使って実装してみる
    # it 'can_not_private_static_method_call' do
    #   expect(DVD.private_static_method).to eq 'Call static method'
    # end
  end
end