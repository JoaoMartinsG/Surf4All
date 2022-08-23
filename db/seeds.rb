# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Board.destroy_all
puts "########## .....Creating Boards..... ##########"

Board.create(description: "Nothing feels better than to ride the nose on a long section hanging ten or even getting a cheater five up there. Any longboarder worth their salt needs to one of these moves in their repertoire and the Long Haul / Fusion-Poly makes it easier.", type_of_board: "Shortboard", tail_shape: "Squash", fins_type: "Single", location: "Porto", volume:24,  width: 12.5, length: 21.7, thickness: 6.2, price_per_day: 20, user_id: 1)
puts "########## .....Boards created succesfully..... #########"
