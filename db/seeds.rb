# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

#Status
#3 Petite pousse
#2 Grand arbre
#1 Jardin luxuriant

#Creation users

Rental.destroy_all
Shop.destroy_all
User.destroy_all

puts '----- Creating users -----'

julia = User.create(name: "Julia", last_name: "Foucher", email: "julia814@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", shop: "true", image_url: ActionController::Base.helpers.image_path('julia.PNG'))
# file = URI.open(ActionController::Base.helpers.image_path('images/julia.PNG'))
# julia.photo.attach(io: file, filename: 'julia.PNG', content_type: 'image/png')

marina = User.create(name: "Marina", last_name: "Magnoli", email: "mgnl.marina@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: "Grand arbre", shop: "false", image_url: ActionController::Base.helpers.image_path('marina.jpg'))

elliot = User.create(name: "Elliot", last_name: "Thyrant", email: "xaron.thyrant@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: "Petite pousse", shop: "false", image_url: ActionController::Base.helpers.image_path('arbre.jpg'))

annelaure = User.create(name: "Anne-Laure", last_name: "Le", email: "annelaurele@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", shop: "true")

#Creation shops

puts '----- Creating shops -----'

stcyp = Shop.create(name: "Le St Cyp Traiteur", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0567687719", email: "", category: 0, opening_hours: "", merchant_picture: "", user: julia, average_rate: 4.8, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

primalova = Shop.create(name: "Prima Lova", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0561447278", email: "", category: 0, opening_hours: "", merchant_picture: "", user: annelaure, average_rate: 4.5, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

chapristea = Shop.create(name: "Chapristea", address: "4 Rue Jules Chalande, 31000 Toulouse", mobile: "0983584945", email: "", category: 0, opening_hours: "", merchant_picture: "", user: julia, average_rate: 4.5, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

prosciutteria = Shop.create(name: "Prosciutteria Toulouse", address: "31 Rue des Filatiers, 31000 Toulouse", mobile: "0971216499", email: "", category: 0, opening_hours: "", merchant_picture: "", user: annelaure, average_rate: 4.5, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

flowers = Shop.create(name: "Flower's Café", address: "6 Place Roger Salengro, 31000 Toulouse", mobile: "0534449366", email: "", category: 0, opening_hours: "", merchant_picture: "", user: julia, average_rate: 4.5, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

alimentation = Shop.create(name: "L'alimentation", address: "24 Place de la Bourse, 31000 Toulouse", mobile: "0561216905", email: "", category: 0, opening_hours: "", merchant_picture: "", user: annelaure, average_rate: 4, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

fufu = Shop.create(name: "Fufu Ramen", address: "32 Rue Sainte-Ursule, 31000 Toulouse", mobile: "0562177446", email: "", category: 0, opening_hours: "", merchant_picture: "", user: julia, average_rate: 4.5, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

boucheb = Shop.create(name: "Bouche b", address: "36 Rue des Filatiers, 31000 Toulouse", mobile: "0561216905", email: "", category: 0, opening_hours: "", merchant_picture: "", user: annelaure, average_rate: 4, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

mamie = Shop.create(name: "Chez Mamie", address: "10 Place de la Trinité, 31000 Toulouse", mobile: "0531225030", email: "", category: 0, opening_hours: "", merchant_picture: "", user: julia, average_rate: 4.3, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

fournil = Shop.create(name: "Fournil de Pierre", address: "16 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561217484", email: "", category: 0, opening_hours: "", merchant_picture: "", user: annelaure, average_rate: 4.3, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

lamiecaline = Shop.create(name: "La Mie Câline", address: "9 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561253948", email: "", category: 0, opening_hours: "", merchant_picture: "", user: julia, average_rate: 4.0, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")

biocoop = Shop.create(name: "Biocoop", address: "7 Place de la Trinité, 31000 Toulouse", mobile: "0534424919", email: "", category: 0, opening_hours: "", merchant_picture: "", user: annelaure, average_rate: 4.3, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")


#Creation rentals

puts '----- Creating rentals -----'

Rental.new(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: "En cours", shop: stcyp, user: marina)
Rental.new(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: "Rendu", shop: prosciutteria, user: elliot)
