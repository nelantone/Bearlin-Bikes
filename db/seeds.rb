# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(:name => 'Grey Falcon', :description => 'Yes! Like a Falcon', image_url: 'bike1.jpg', color:'grey', price: 123.0)
Product.create(:name => 'White rainbow', :description => 'Yes! amazing', image_url: 'bike2.jpg', color:'bluegrey', price: 314.0)
Product.create(:name => 'black ruby cobra', :description => 'My favorite snake!', image_url: 'bike6.jpg', color:'orange', price: 170.50 )
Product.create(:name => 'Best Vintage', :description => 'Vintage!', image_url: 'bike3.jpg', color:'black', price: 230.0 )
Product.create(:name => 'B-New Vintage', :description => 'Quite new Vintage!', image_url: 'https://s-media-cache-ak0.pinimg.com/736x/5c/d2/da/5cd2da34ff92d6f2875ebb95de75cefc.jpg', color:'blue', price: 127.80 )
Order.create(product_id: 1)