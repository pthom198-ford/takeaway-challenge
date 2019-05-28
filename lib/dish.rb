class Dish


  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def add
    { dish: @name, price: @price, quantity: @quantity }
  end
end
