class RestaurantPizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizza, through: :restaurant_pizzas
end
