class Product
  attr_reader :price, :name

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "[#{@name}] [Price : #{@price}]"
  end

  def private_call
    private_method
  end

  private

  def private_method
    "Private -> #{to_s}"
  end
end
