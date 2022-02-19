# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Creation users

al = User.create(email: "annelaurele@hotmail.fr", password: "12345678", name: "Anne-Laure", last_name: "Le", address: "Toulouse", mobile: "0617373935", status: "client")
julia = User.create(email: "julia814@hotmail.fr", password: "12345678", name: "Julia", last_name: "Foucher", address: "Paris", mobile: "0617373935", status: "owner")

#Creation shop

shop = Shop.create(name: "Boulangerie", address: "Paris", description: "Ceci est une description", mobile: "0617373935", email: "boulangerie@gmail.com", category: "boulangerie")

#Creation rental

# loc = Rental.new(status: "en cours")

# loc.user = julia
# loc.shop = shop
# shop.user = al
# loc.save
# al.save
