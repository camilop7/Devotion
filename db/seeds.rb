# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# db/seeds.rb
Roaster.create(name: 'Roaster1', origin: 'Origin1', description: 'Description1', additional_info: 'Info1', picture: 'roaster1.jpg')
Roaster.create(name: 'Roaster2', origin: 'Origin2', description: 'Description2', additional_info: 'Info2', picture: 'roaster2.jpg')
Roaster.create(name: 'Roaster3', origin: 'Origin3', description: 'Description3', additional_info: 'Info3', picture: 'roaster2.jpg')

Shop.create(name: 'Shop1', location: 'Location1', description: 'Description1', additional_info: 'Info1', picture: 'shop1.jpg')
Shop.create(name: 'Shop2', location: 'Location2', description: 'Description2', additional_info: 'Info2', picture: 'shop2.jpg')
Shop.create(name: 'Shop3', location: 'Location3', description: 'Description3', additional_info: 'Info3', picture: 'shop3.jpg')

Farmer.create(name: 'Farmer1', origin: 'Origin1', description: 'Description1', additional_info: 'Info1', picture: 'farmer1 .jpg')
Farmer.create(name: 'Farmer2', origin: 'Origin2', description: 'Description2', additional_info: 'Info2', picture: 'farmer2.jpg')
Farmer.create(name: 'Farmer3', origin: 'Origin3', description: 'Description3', additional_info: 'Info3', picture: 'farmer3.jpg')

User.create(email: 'camilo@camilo.com',)
