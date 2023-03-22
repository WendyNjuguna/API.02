# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.create([{name: 'picknBite', address: 'Wonderland'}, {name: 'forkyoupine', address: 'Kagwe'},{name: 'Wagwan', address: 'imentihouse'}])
Pizza.create([{name: 'onetime', ingredients: 'hotsauce,tomato,onion'}, {name: 'chewnut', ingredients: 'Tomato,Chillie,Cheese'},{name: 'Hawaiian', ingredients: 'Cheese, Ham, Pineapple'}])
RestaurantPizza.create([{ restaurant_id: 4, pizza_id: 2, price: 24}, { restaurant_id: 2, pizza_id: 3, price: 17}, { restaurant_id: 6, pizza_id: 8, price: 29}])