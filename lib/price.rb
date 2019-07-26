class Price
  CONSUMPTION_TAX = 0.08
  CONSUMPTION_TAX_RATE = 1 + CONSUMPTION_TAX

  private_constant :CONSUMPTION_TAX_RATE

  def initialize(price)
    @price = price
  end

  def tax_included_price
    @price * CONSUMPTION_TAX_RATE
  end

  freeze
end

