# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "json"
require "open-uri"

url = "https://api.themoviedb.org/3/movie/top_rated?api_key=2dd25e96db24d84334d3dbd744a22f88"
movie_serialized = URI.open(url).read
movies = JSON.parse(movie_serialized)
movie_results = movies["results"]

movie_results.each do |movie|
  Movie.create(title: movie["original_title"], overview: movie["overview"], poster_url: movie["poster_path"])
end
