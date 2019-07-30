require 'rspec'
require './lib/module/deep_freezable'

describe DeepFreezable do

  context '設定確認' do
    it 'moduleが参照可能であること' do
      aggregate_failures '参照可能であること' do
        expect(DeepFreezable).to eq DeepFreezable
      end
    end
  end
end