class RestaurantPizzasController < ApplicationController
    def create 
        restaurant = Restaurant.create(restaurant_params)
        if restaurant.save
        render json: restaurant, status: :created
        else render json:{error:restaurant.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private
    
    def restaurant_params
        params.permit(:price , :pizza_id, :restaurant_id)
      end  
end
