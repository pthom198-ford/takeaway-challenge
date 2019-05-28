class Order

  attr_reader :dishes, :basket, :dish

  def initialize

    @dishes = [
    {dish: "Mozzarella", price: 7.50},
    {dish: "Pepperoni", price: 8.00},
    {dish: "Ham & Pineapple", price: 8.00},
    {dish: "BBQ Chicken", price: 8.50},
    {dish: "Meat Feast", price: 9.00},
    {dish: "Garlic Bread", price: 4.00},
    {dish: "Dough balls", price: 3.50},
    ]
    @basket = []
  end

    def view_dishes
      @dishes
    end

    def add(dish_name, quantity, dish = Dish)
    dish_selected = @dishes.select { |item| item[:dish] == dish_name}
    @basket << dish.new(dish_name, quantity, dish_selected[0][:price]).add
  end
end
