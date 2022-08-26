require "open-uri"
puts "########## .....Destroying all boards..... #########"
Board.destroy_all

puts "########## .....Destroying all user..... #########"
User.destroy_all

puts "########## .....Creating All Users..... ##########"

puts "########## .....Creating Team Users..... ##########"

user1 = User.create(email: 'rafaquintanilha@lewagon.com', password: 'password', first_name: 'Rafael', last_name: 'Quintanilha')
user2 = User.create(email: 'joaomartins@lewagon.com', password: 'password', first_name: 'Joao', last_name: 'Martins')
user3 = User.create(email: 'alexcortereal@lewagon.com', password: 'password', first_name: 'Alex', last_name: 'Corte-Real')
user4 = User.create(email: 'lochlansavage@lewagon.com', password: 'password', first_name: 'Lochlan', last_name: 'Savage')

puts "########## .....Creating Demo Users..... ##########"

Renter = User.create(email: 'renter@lewagon.com', password: 'password', first_name: 'Renter', last_name: 'Surfer')
Rentee = User.create(email: 'rentee@lewagon.com', password: 'password', first_name: 'Rentee', last_name: 'Surfer')

puts "########## .....Users created succesfully..... #########"

puts "########## .....Creating Boards..... ##########"
file = URI.open("https://res.cloudinary.com/jmartins/image/upload/v1661464979/development/9x5g2yqf20uwpxgn8ixc7xfldy4g.png")
board = Board.new(volume: 24.5, description: "Nice board Very good Thank You come again.", type_of_board: "Shortboard", tail_shape: "Squash", fins_type: "Single", location: "Porto, Portugal", width: 12.5, length: 21.7, thickness: 6.2, price_per_day: 20, user_id: user1.id)
board.photos.attach(io: file, filename: "9x5g2yqf20uwpxgn8ixc7xfldy4g.png", content_type: "image/png")
board.save

file = URI.open("https://res.cloudinary.com/jmartins/image/upload/v1661464974/development/2xmy1nudac0p0timy5dvjyuu86jx.png")
board = Board.new(volume: 24.5, description: "Broke a piece but all good surf with one foot only.", type_of_board: "Shortboard", tail_shape: "Squash", fins_type: "Single", location: "Porto", width: 12.5, length: 21.7, thickness: 6.2, price_per_day: 20, user_id: user2.id)
board.photos.attach(io: file, filename: "2xmy1nudac0p0timy5dvjyuu86jx.png", content_type: "image/png")
board.save

puts "########## .....Boards created succesfully..... #########"
