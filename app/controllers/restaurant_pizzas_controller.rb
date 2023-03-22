class RestaurantPizzasController < ApplicationController
    def create 
        restaurant_pizza = Restaurant.create(restaurant_params)
        if restaurant_pizza.save
        render json: restaurant_pizza, status: :created
        else render json:{error: restaurant_pizza.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    
    def restaurant_params
        params.permit(:price, :pizza_id, :restaurant_id)
      end  
end
