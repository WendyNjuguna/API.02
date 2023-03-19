class RestaurantsController < ApplicationController
    #GET restaurants
    def index
        restaurants=Restaurant.all
        render json:restaurants
    end
    # GET /restaurants/:id
    def show
        restaurant=find_restaurant_id
        if restaurant
            render json:restaurant,include: :pizza
        else
            error_message
        end
    end
    #DELETE /restaurants/:id
    def destroy
        restaurant=find_restaurant_id
        if restaurant
            restaurant.destroy
            head :no_content
        else
            error_message
            
        end
    end

private 

def find_restaurant_id
     Restaurant.find_by(id: params[:id])
end
def error_message
    render json: { status:"Restaurant not found" }, status: :not_found
end
end
