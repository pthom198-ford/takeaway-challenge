require './lib/order.rb'




describe Order do

let(:order) { Order.new }
let(:dish_double) { double(:dish_double, :new => dish) }
let(:dish) { double(:dish, :display => [
  {dish: "Mozzarella", price: 7.50},
  {dish: "Pepperoni", price: 8.00}]) }

  it 'initializes a list of dishes' do
     order = Order.new(dish)
    expect(order.dishes).to eq([
      {dish: "Mozzarella", price: 7.50},
      {dish: "Pepperoni", price: 8.00},
      ])
  end

  it 'displays the list of dishes to customer' do
    # order = Order.new
    expect(order.view_dishes).to eq(order.dishes)
  end

   it 'tells dish to add the dish to basket in order' do
     expect(dish).to receive(:add)
     order.add("Mozzarella", 1, dish_double)
   end

end
