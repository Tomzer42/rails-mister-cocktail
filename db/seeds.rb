# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts 'Creating ingredients...'

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "gazole")
Ingredient.create(name: "fire")
Ingredient.create(name: "bottle")
Ingredient.create(name: "vodka")
Ingredient.create(name: "martini")

molotov = Cocktail.new(name: "Molotov")
file = URI.open("https://source.unsplash.com/1600x900/?cocktail,#{molotov.name}")
molotov.photo.attach(io: file, filename: 'molotov.jpg', content_type: 'image/png')
molotov.save

sex_on_the_beach = Cocktail.new(name: "Sex on the beach")
file = URI.open("https://source.unsplash.com/1600x900/?cocktail,#{sex_on_the_beach.name.gsub(" ", "_")}")
sex_on_the_beach.photo.attach(io: file, filename: 'sex_on_the_beach.jpg', content_type: 'image/png')
sex_on_the_beach.save

mojito = Cocktail.new(name: "Mojito")
file = URI.open("https://source.unsplash.com/1600x900/?cocktail,#{mojito.name}")
mojito.photo.attach(io: file, filename: 'mojito.jpg', content_type: 'image/png')
mojito.save
