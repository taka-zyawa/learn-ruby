require "spec_helper"
require "./lib/product/product"

class ProductSpec

  describe Product do
    it 'name_and_price_initialized' do
      product = Product.new('A great movie', 1000)
      expect(product.name).to eq 'A great movie'
      expect(product.price).to eq 1000
    end

    it 'can_private_call' do
      product = Product.new('A great movie', 1000)
      expect(product.private_call).to eq "Private -> [A great movie] [Price : 1000]"
    end

    it 'can_protected_call' do
      product = Product.new('A great movie', 1000)
      expect(product.protected_call).to eq "Protected -> [A great movie] [Price : 1000]"
    end
  end
end