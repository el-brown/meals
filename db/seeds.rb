# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dinner.destroy_all

# Dinner Seeds
bowl = Dinner.create(name:"Bowls")
stir = Dinner.create(name:"Stir Fry")
taco = Dinner.create(name:"Tacos")
soup = Dinner.create(name:"Soup")
salad = Dinner.create(name:"Salad")

#Recipe and Review seeds for BBQ
bbq = bowl.recipes.create(name:"BBQ Chicken Quinoa Bowl;", stars: 5)
bbq.reviews.create(title:"OMG", comment:"The corn is a must", name:"Jacqueline")

#Recipe and Review seeds for Chili Lime Shrimp
chili = bowl.recipes.create(name:"Chili Lime Shrimp Bowl", stars: 5)
chili.reviews.create(title:"Tasty", comment:"An odd combination but it really works", name:"Bob")

#Recipe and Review seeds for Fridge Dump
d = bowl.recipes.create(name:"Scrumptious Fridge Dump", stars: 3)
d.reviews.create(title:"Interesting", comment:"Yeah, ok, I get it", name:"Shawnie")

# Recipe and Review for BC over R
bcor = stir.recipes.create(name:"Broccoli and Chicken over Rice", stars: 3)
bcor.reviews.create(title:"Nom Nom", comment:"This is the greatest thing since Zao", name:"Jordan")

# Recipe and Review for Mixed Veg over Ramen
veg = stir.recipes.create(name:"Mixed Veggies over Ramen Noodles", stars: 4)
veg.reviews.create(title:"Slurp", comment:"The whole family loved it", name:"Suzette")

# Recipe and Review for Fridge Dump
fstir = stir.recipes.create(name:"Fridge Dump over Whatever", stars: 4)
fstir.reviews.create(title:"Nom Nom", comment:"This is the greatest thing since Zao", name:"Jordan")

# Recipe and Review for Fridge Dump
taco.recipes.create(name:"Ground Beef Street Tacos", stars: 4)


taco.recipes.create(name:"Chicken Soft Tacos", stars: 2)


taco.recipes.create(name:"Crunchy Cabbage Tacos", stars: 5)

soup.recipes.create(name:"Beef Stew", stars: 3)


soup.recipes.create(name:"Chicken Noodle", stars: 5)


soup.recipes.create(name:"Scrumptious Fridge Dump Soup", stars: 3)

salad.recipes.create(name:"Chicken Greek Salad", stars: 3)


salad.recipes.create(name:"Chef's Salad", stars: 3)


salad.recipes.create(name:"Chopped Thai Salad", stars: 5)

