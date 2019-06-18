# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

rick_morty_data = RestClient.get 'https://rickandmortyapi.com/api/character/'


rick_morty_array = JSON.parse(rick_morty_data)["results"]


# rm_array[0]["name"] == "Rick Sanchez"

rick_morty_array.each do |character|
  Character.create(
    name: character["name"],
    status: character["status"],
    species: character["species"],
    gender: character["gender"],
    image: character["image"],
    origin: character["origin"]["name"],
    current_location: character["location"]["name"],
    )
end

kristin = User.create(username: "koberlander", password: "password", notes: "i like things")

fav1 = Favorite.create(character_id: 1, user_id: kristin.id)
