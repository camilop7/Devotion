# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(email: 'camilo@camilo.com')

# Create Roasters
Roaster.create(name: 'Roaster1', origin: 'Origin1', description: 'Description1', additional_info: 'Info1', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694978991/IMG_5193_w5p6tq.jpg')
Roaster.create(name: 'Roaster2', origin: 'Origin2', description: 'Description2', additional_info: 'Info2', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482493/IMG_5227_ckanmz.jpg')
Roaster.create(name: 'Roaster3', origin: 'Origin3', description: 'Description3', additional_info: 'Info3', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482492/IMG_5208_qitllm.jpg')
Roaster.create(name: 'Roaster4', origin: 'Origin4', description: 'Description4', additional_info: 'Info4', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694978991/IMG_5193_w5p6tq.jpg')
Roaster.create(name: 'Roaster5', origin: 'Origin5', description: 'Description5', additional_info: 'Info5', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694978991/IMG_5193_w5p6tq.jpg')
Roaster.create(name: 'Roaster6', origin: 'Origin6', description: 'Description6', additional_info: 'Info6', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482493/IMG_5227_ckanmz.jpg')
Roaster.create(name: 'Roaster7', origin: 'Origin7', description: 'Description7', additional_info: 'Info7', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482492/IMG_5208_qitllm.jpg')
Roaster.create(name: 'Roaster8', origin: 'Origin8', description: 'Description8', additional_info: 'Info8', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694978991/IMG_5193_w5p6tq.jpg')
Roaster.create(name: 'Roaster9', origin: 'Origin9', description: 'Description9', additional_info: 'Info9', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482493/IMG_5227_ckanmz.jpg')
Roaster.create(name: 'Roaster10', origin: 'Origin10', description: 'Description10', additional_info: 'Info10', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482492/IMG_5208_qitllm.jpg')

# Create Products for Roasters
Roaster.all.each do |roaster|
  (1..10).each do |i|
    roaster.products.create(
      name: "Product#{i} for #{roaster.name}",
      origin: "Origin#{i} for #{roaster.name}",
      profile: "Profile#{i} for #{roaster.name}",
      notes: "Notes for Product#{i}",
      roasting_comments: "Roasting comments for Product#{i}",
      image_url: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698944424/IMG_5227_ckanmz.jpg'
    )
  end
end


# Create Shops
Shop.create(name: 'Angel', location: 'Location1', description: 'Description1', additional_info: 'Info1', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482492/IMG_5117_jhf5xe.jpg')
Shop.create(name: 'Clenckerwell', location: 'Location2', description: 'Description2', additional_info: 'Info2', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1695482494/PHOTO-2023-09-23-16-05-13-4_g4sito.jpg?_s=public-apps')
Shop.create(name: 'Virtual Shop', location: 'Location3', description: 'Description3', additional_info: 'Info3', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1695482492/IMG_5117_jhf5xe.jpg?_s=public-apps')

# Create Farmers
Farmer.create(name: 'Farmer1', origin: 'Origin1', description: 'Description1', additional_info: 'Info1', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer2', origin: 'Origin2', description: 'Description2', additional_info: 'Info2', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer3', origin: 'Origin3', description: 'Description3', additional_info: 'Info3', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer4', origin: 'Origin4', description: 'Description4', additional_info: 'Info4', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer5', origin: 'Origin5', description: 'Description5', additional_info: 'Info5', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer6', origin: 'Origin6', description: 'Description6', additional_info: 'Info6', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer7', origin: 'Origin7', description: 'Description7', additional_info: 'Info7', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer8', origin: 'Origin8', description: 'Description8', additional_info: 'Info8', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')
Farmer.create(name: 'Farmer9', origin: 'Origin9', description: 'Description9', additional_info: 'Info9', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1694860163/coffee-bean-medium-roasted-with-leaf-fresh-morning_39768-6561_ttkbvd.jpg')

puts "Successfully seeded!"
