class Customer
  
  attr_reader :order

  def initialize(order=Order)
    @order = order.new
  end

  def view_dishes
    @order.view_dishes
  end
end
