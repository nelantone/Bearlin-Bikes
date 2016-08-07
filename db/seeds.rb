# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(:name => "Grey Falcon", :description => "Yes!", image_url: "bike1.jpg")
Product.create(:name => "White rainbow", :description => "Yes! amazing", image_url: "bike2.jpg")
Product.create(:name => "black ruby cobra", :description => "My favorite", image_url: "bike6.jpg")
Product.create(:name => "Best Vintage", :description => "Vintage!", image_url: "bike3.jpg")
Product.create(:name => "Best Vintage", :description => "Vintage!", image_url: "https://s-media-cache-ak0.pinimg.com/736x/5c/d2/da/5cd2da34ff92d6f2875ebb95de75cefc.jpg")
