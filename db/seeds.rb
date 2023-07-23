# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do 
    Movie.create(
        name: Faker::Movies::HarryPotter.character, 
        synopsis: Faker::Movies::HarryPotter.location, 
        director: Faker::Movies::HarryPotter.house)
    end

10.times do 
    Serie.create(
        name: Faker::Movies::HarryPotter.character, 
        synopsis: Faker::Movies::HarryPotter.location, 
        director: Faker::Movies::HarryPotter.house)
    end    
10.times do 
    Documentaryfilm.create(
        name: Faker::Movies::HarryPotter.character, 
        synopsis: Faker::Movies::HarryPotter.location, 
        director: Faker::Movies::HarryPotter.house)
    end