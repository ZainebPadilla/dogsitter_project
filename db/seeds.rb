# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Créer des dogsitters
# db/seeds.rb
rennes = City.create!(city_name: "Rennes")
angers = City.create!(city_name: "Angers")
# Créer des dogsitters
dogsitter1 = Dogsitter.create!(name: 'Josiane', city: angers)
dogsitter2 = Dogsitter.create!(name: 'Jean', city: rennes)

# Créer des chiens
dog1 = Dog.create!(name: 'Rex', city: rennes)
dog2 = Dog.create!(name: 'Bella', city: angers)

# Créer des promenades (strolls) en passant directement les objets `dogsitter` et `dog`
Stroll.create!(dogsitter: dogsitter1, dog: dog1)
Stroll.create!(dogsitter: dogsitter1, dog: dog2)
Stroll.create!(dogsitter: dogsitter2, dog: dog1)
