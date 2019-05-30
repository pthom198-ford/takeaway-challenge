require_relative 'dish.rb'

class Order



  attr_reader :dishes, :basket, :dish



  def initialize(dish = Dish.new)
    @dishes = dish.display
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
