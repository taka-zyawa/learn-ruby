require "spec_helper"
require "./lib/product/product"

class ProductSpec

  describe Product do
    it 'name_and_price_initialized' do
      product = Product.new('A great movie', 1000)
      expect(product.name).to eq 'A great movie'
      expect(product.price).to eq 1000
    end
  end
end