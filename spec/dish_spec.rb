require 'dish'

describe Dish do

  it 'Display all dishes' do
    dish = Dish.new

    expect(dish.display).to eq([
    {dish: "Mozzarella", price: 7.50},
    {dish: "Pepperoni", price: 8.00},
    {dish: "Ham & Pineapple", price: 8.00},
    {dish: "BBQ Chicken", price: 8.50},
    {dish: "Meat Feast", price: 9.00},
    {dish: "Garlic Bread", price: 4.00},
    {dish: "Dough balls", price: 3.50},
    ])
  end
end
