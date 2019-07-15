require './lib/product/product'

class DVD < Product

  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
     "#{super} [Running time : #{@running_time} minute]"
  end

  def private_call
    "Sub #{private_method}"
  end

  def self.static_method
    "Call static method"
  end

  class << self
    private

    def self.private_static_method
      "Call private static method"
    end

  end
end
