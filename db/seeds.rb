# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'Date'

Rental.destroy_all
Shop.destroy_all
User.destroy_all

#Status
#3 Petite pouce
#2 Grand arbre
#1 Jardin luxuriant

#Creation users

puts '----- Creating users -----'

User.create(name: "Julia", last_name: "Foucher", email: "julia814@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", shop: "true", image_url: "")
User.create(name: "Marina", last_name: "Magnoli", email: "mgnl.marina@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: "Grand arbre", shop: "false", image_url: "")
User.create(name: "Elliot", last_name: "Thyrant", email: "xaron.thyrant@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: "Petite pouce", shop: "false", image_url: "")
User.create(name: "Anne-Laure", last_name: "Le", email: "annelaurele@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", shop: "true", image_url: "")

#Creation shops

puts '----- Creating shops -----'

Shop.create(name: "Le St Cyp Traiteur", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0567687719", email: "", category: "Traiteur", opening_hours: "", merchant_picture: "", user_id: 1, average_rate: 4.8)
Shop.create(name: "Prima Lova", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0561447278", email: "", category: "Épicerie", opening_hours: "", merchant_picture: "", user_id: 4, average_rate: 4.5)
Shop.create(name: "Chapristea", address: "4 Rue Jules Chalande, 31000 Toulouse", mobile: "0983584945", email: "", category: "Salon de thé", opening_hours: "", merchant_picture: "", user_id: 1, average_rate: 4.5)
Shop.create(name: "Prosciutteria Toulouse", address: "31 Rue des Filatiers, 31000 Toulouse", mobile: "0971216499", email: "", category: "Restaurant", opening_hours: "", merchant_picture: "", user_id: 4, average_rate: 4.5)
Shop.create(name: "Flower's Café", address: "6 Place Roger Salengro, 31000 Toulouse", mobile: "0534449366", email: "", category: "Salon de thé", opening_hours: "", merchant_picture: "", user_id: 1, average_rate: 4.5)
Shop.create(name: "L'alimentation", address: "24 Place de la Bourse, 31000 Toulouse", mobile: "0561216905", email: "", category: "Épicerie", opening_hours: "", merchant_picture: "", user_id: 4, average_rate: 4)
Shop.create(name: "Fufu Ramen", address: "32 Rue Sainte-Ursule, 31000 Toulouse", mobile: "0562177446", email: "", category: "Restaurant", opening_hours: "", merchant_picture: "", user_id: 1, average_rate: 4.5)
Shop.create(name: "Bouche b", address: "36 Rue des Filatiers, 31000 Toulouse", mobile: "0561216905", email: "", category: "Restaurant", opening_hours: "", merchant_picture: "", user_id: 4, average_rate: 4)
Shop.create(name: "Chez Mamie", address: "10 Place de la Trinité, 31000 Toulouse", mobile: "0531225030", email: "", category: "Boucherie", opening_hours: "", merchant_picture: "", user_id: 1, average_rate: 4.3)
Shop.create(name: "Fournil de Pierre", address: "16 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561217484", email: "", category: "Boulangerie", opening_hours: "", merchant_picture: "", user_id: 4, average_rate: 4.3)
Shop.create(name: "La Mie Câline", address: "9 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561253948", email: "", category: "Boulangerie", opening_hours: "", merchant_picture: "", user_id: 1, average_rate: 4.0)
Shop.create(name: "Biocoop", address: "7 Place de la Trinité, 31000 Toulouse", mobile: "0534424919", email: "", category: "Épicerie", opening_hours: "", merchant_picture: "", user_id: 4, average_rate: 4.3)


#Creation rentals

puts '----- Creating rentals -----'

Rental.new(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: "En cours", shop_id: 1, user_id: 2)
Rental.new(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: "Rendu", shop_id: 4, user_id: 3)
