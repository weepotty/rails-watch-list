# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

puts 'now seeding db...'
url = 'https://tmdb.lewagon.com/movie/top_rated'
array_of_movies = JSON.parse(URI.open(url).read)['results']

array_of_movies.each do |movie|
  Movie.create(title: movie['original_title'], overview: movie['overview'], poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}", rating: movie['vote_average'] )
end
