require './lib/product/product'

class DVD < Product

  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end
