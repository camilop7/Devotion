# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create(email: 'camilo@camilo.com')

# Create Roasters
Roaster.create(name: 'Gardelli', origin: 'Italy', description: 'Each coffee we buy and sell has passed through Rubens insane cupping protocol which includes a strict blind tasting and blind selection. We just buy what we think is the best in any specific moment of the year without being influenced by flamboyant labels, strange or fancy coffee varieties or farmers name. Each coffee lot we buy is fully traceable, coming from only fresh in-season crops, and is selected first and foremost for its real quality.', additional_info: 'Info1', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955116/gardelli_t9gjdv.png')
Roaster.create(name: 'Manhattan', origin: 'Netherlands', description: 'A small specialty coffee Roastery based in Rotterdam, The Netherlands. Founded by long time coffee industry professionals Ben Morrow and Esther Maasdam. We focus on bringing the flavour of origin into your cup of coffee. Every Manhattan coffee is sourced ethically and sustainably.', additional_info: 'Info2', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955116/mahattan_ma98iv.jpg')
Roaster.create(name: 'Dak', origin: 'Netherlands', description: 'Dak Coffee Roasters is based in charming Amsterdam, Netherlands and was founded by two Canadians from Montreal. We select beautiful and unique coffees and carefully roast them to highlight the best flavors they have to offer. We always maintain a selection that includes some funky and experimental coffees along with more classic origins. There is always something to be found, no matter your preferences.', additional_info: 'Info3', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955115/dak_vydt8h.webp')
Roaster.create(name: 'Kawa', origin: 'France', description: 'Since opening Kawa, we have made the decision to focus on roasting. Our motto, to offer the best roasting and with the greatest regularity. What is a good roast for Kawa? It’s the one that will awaken your taste buds and enhance the original terroir. Each coffee has its history, we have the heavy responsibility of sublimating the work of our coffee growing partners but also of making it easier for you to extract it.', additional_info: 'Info4', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955116/kawa_ay8egf.jpg')
Roaster.create(name: 'Tim Wendelboe', origin: 'Norway', description: 'We are known for our light-roasted coffees and consistent quality. The secret behind our reputation is not just the way we roast or our strict quality control, but also the way we buy green coffee. Our coffees are carefully selected by Tim Wendelboe and are sourced from his favourite origins with emphasis on quality, traceability and responsibility. We like to have close relations with the producers we buy from. Together we work systematically, both in the short and long term, in order to improve their farms and coffees. This ensures that the coffees we purchase are harvested and processed following our strict protocols. Our goal is to present a coffee with distinct character of its variety and origin.', additional_info: 'Info5', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955115/Tim_v7scv6.webp')
Roaster.create(name: 'Ozone', origin: 'New Zeland', description: 'Founded 25 years ago in New Zealand and London 11 years ago, Ozone Coffee is an international specialty coffee company. Our purpose is to lead enduring change in the way coffee is valued, grown, produced and enjoyed, responsibly for the future. We are proud to be B Corp Certified. We cultivate long-term, direct relationships with coffee communities at origin. This provides us with some of the very best speciality coffee in the world, to share with our customers – providing wholesale solutions to premium hotel groups, restaurants and coffee shops, plus at home coffee experiences for our customers online. We also operate multiple eateries in the UK and New Zealand, specialising in sustainable, low-waste dining and a warm Kiwi hospitality – simply put, we are your ultimate coffee host', additional_info: 'Info6', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1695482493/IMG_5227_ckanmz.jpg')
Roaster.create(name: 'La Cabra', origin: 'Denmark', description: 'La Cabra Coffee is a modern coffee company established in Aarhus, Denmark in 2012. We started in a small shop far from the city centre, a dedicated team aiming to offer something new and exciting to Aarhus, which already had a strong and established coffee culture. Quickly, this dedication to providing outstanding coffee experiences turned into obsession with a fast growing industry that was slowly spanning the globe.', additional_info: 'Info10', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698954218/la_cabra_glw68q.png')
Roaster.create(name: 'Ditta Artigianale', origin: 'Italy', description: 'We are artisans in the modern era, we love specialty coffee more than anything and we have made it our reason for living. We like to tell you about it, let you taste it and share it with you. We share not just a cup of coffee, we share a unique and magical story with you.', additional_info: 'Info8', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955115/ditta_krkjqd.jpg')
Roaster.create(name: 'Morgon', origin: 'Sweden', description: 'We founded Morgon Coffee Roasters in Gothenburg, the summer of 2018. While Morgon is still a relatively young company, our team, consisting of Gabriella Runesson, Christian Gullbrandsson and Markus Vestergaard has nearly 40 years of combined experience of working with coffee. A motivating force behind coming together to start Morgon was the goal to run it as we would want our own favourite coffee roastery to run. For us that means roasting coffee that we enjoy ourselves, working long term together with producers we’ve known for years. That way we can make sure that we can purchase lots that all have the potential of being our latest favourite cup of coffee, ever. To get there we need to have common goals and an understanding of the wants and needs from both our and the producers side. That’s where things start to get special.', additional_info: 'Info9', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955115/morgon_w5xmzf.jpg')

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
Shop.create(name: 'Angel', location: 'Location1', description: 'Description1', additional_info: 'Info1', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698955714/angel_bhm2bs.jpg')
Shop.create(name: 'Clenckerwell', location: 'Location2', description: 'Description2', additional_info: 'Info2', picture: 'https://res.cloudinary.com/difj9msh3/image/upload/v1698956273/clenkerwell_zra5b1.webp')
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
