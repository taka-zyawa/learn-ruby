require './lib/module/loggable'

class Product
  include Loggable

  attr_reader :price, :name

  def initialize(name, price)
    @name = name
    @price = price
  end

  def title
    log "title is called]"
    "#{@name}"
  end

  def to_s
    "[#{@name}] [Price : #{@price}]"
  end

  def private_call
    private_method
  end

  def protected_call
    self.protected_method
  end

  private

  def private_method
    "Private -> #{to_s}"
  end

  protected

  def protected_method
    "Protected -> #{to_s}"
  end
end

p Product.include?(Loggable)
product = Product.new('name', 1000)
p product.is_a?(Loggable)
