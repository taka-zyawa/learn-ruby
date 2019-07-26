require 'rspec'
require './lib/price'

describe Price do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context '計算パターン' do
    it '100 yen' do
      price = Price.new(100)
      expect(price.tax_included_price).to eq 108
    end
  end

  context '定数設定の確認' do
    it '消費税計算用定数は参照できない' do
      expect { Price::CONSUMPTION_TAX_RATE }.to raise_error(NameError)
    end

    it '消費税定数は参照出来る' do
      expect(Price::CONSUMPTION_TAX).to eq 0.08
    end

    it '消費税定数は上書きできない' do
      expect { Price::CONSUMPTION_TAX = 0.1 }.to raise_error(RuntimeError)
      expect(Price::CONSUMPTION_TAX).to eq 0.08
    end
  end
end