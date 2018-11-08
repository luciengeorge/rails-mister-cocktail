# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'rest-client'

puts 'Cleaning cocktail database...'

Cocktail.destroy_all

puts 'Cleaning ingredient database...'

Ingredient.destroy_all

puts 'Cleaning doses database'

Dose.destroy_all

puts 'Adding new ingredients to database...'

response = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(response)
ingredients['drinks'].each do |ingredient|
  Ingredient.create!(
    name: ingredient['strIngredient1']
  )
end

puts 'Ingredients Added!'

# puts 'Adding new cocktails to database...'

# 10.times do
#   Cocktail.create!(
#     name: Faker::Food.dish
#   )
# end

# puts 'Cocktails Added!'
