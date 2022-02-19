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

stcyp = Shop.create(name: "Le St Cyp Traiteur", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0567687719", email: "", category: 4, description: "Un généreux traiteur de quartier à ne pas manquer !", user: julia, average_rate: 4.8)
file = URI.open('https://images.ladepeche.fr/api/v1/images/view/5fbcbc7f8fe56f66601477c8/large/image.jpg?v=1')
stcyp.photo.attach(io: file, filename: 'stcyp.png', content_type: 'image/png')
SlotHour.create(opening_hour: 10, closing_hour: 13, day_of_the_week: "Lundi", shop: stcyp)
SlotHour.create(opening_hour: 17, closing_hour: 20, day_of_the_week: "Lundi", shop: stcyp)
SlotHour.create(opening_hour: 10, closing_hour: 13, day_of_the_week: "Mardi", shop: stcyp)
SlotHour.create(opening_hour: 17, closing_hour: 20, day_of_the_week: "Mardi", shop: stcyp)
SlotHour.create(opening_hour: 10, closing_hour: 13, day_of_the_week: "Mercredi", shop: stcyp)
SlotHour.create(opening_hour: 17, closing_hour: 20, day_of_the_week: "Mercredi", shop: stcyp)
SlotHour.create(opening_hour: 10, closing_hour: 13, day_of_the_week: "Jeudi", shop: stcyp)
SlotHour.create(opening_hour: 17, closing_hour: 20, day_of_the_week: "Jeudi", shop: stcyp)
SlotHour.create(opening_hour: 9, closing_hour: 13, day_of_the_week: "Vendredi", shop: stcyp)
SlotHour.create(opening_hour: 17, closing_hour: 20, day_of_the_week: "Vendredi", shop: stcyp)
SlotHour.create(opening_hour: 9, closing_hour: 13, day_of_the_week: "Samedi", shop: stcyp)
SlotHour.create(opening_hour: 17, closing_hour: 20, day_of_the_week: "Samedi", shop: stcyp)
SlotHour.create(opening_hour: 9, closing_hour: 13, day_of_the_week: "Dimanche", shop: stcyp)
SlotHour.create(opening_hour: 17, closing_hour: 20, day_of_the_week: "Dimanche", shop: stcyp)


primalova = Shop.create(name: "Prima Lova", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0561447278", email: "", category: 3, description: "On retrouve chez Prima Lova les ingrédients qui font le succès de la trattoria. Et surtout toute la générosité de l'Italie.", user: annelaure, average_rate: 4.5)
file = URI.open('https://static.actu.fr/uploads/2020/07/img-20200707-wa0002.jpg')
primalova.photo.attach(io: file, filename: 'primalova.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Lundi", shop: primalova)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Lundi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Mardi", shop: primalova)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Mardi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Mercredi", shop: primalova)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Mercredi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Jeudi", shop: primalova)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Jeudi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Vendredi", shop: primalova)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Vendredi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Samedi", shop: primalova)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Samedi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Dimanche", shop: primalova)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Dimanche", shop: primalova)

chapristea = Shop.create(name: "Chapristea", address: "4 Rue Jules Chalande, 31000 Toulouse", mobile: "0983584945", email: "", category: "Salon de thé", description: "Le Chapristea est un « Bar à chats » où vous pouvez profiter d'une pause gourmande en compagnie des félins.", user: julia, average_rate: 4.5)
file = URI.open('https://static.actu.fr/uploads/2016/10/Chapristea-960x640.jpg')
chapristea.photo.attach(io: file, filename: 'chapristea.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Lundi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Mardi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Mercredi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Jeudi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Vendredi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Samedi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Dimanche", shop: chapristea)

prosciutteria = Shop.create(name: "Prosciutteria Toulouse", address: "31 Rue des Filatiers, 31000 Toulouse", mobile: "0971216499", email: "", category: 1, description: "Nous proposons d’incroyables paninis XXL, des bruschettone, des salades gourmandes ainsi que de belles planches de charcuterie fines et fromages.", user: annelaure, average_rate: 4.5)
file = URI.open('https://images.squarespace-cdn.com/content/v1/5d3ace69b3d0000001bcaebf/1564415113289-BIMI49JLL2O616OE7EJ3/prosciutteria.jpg?format=1000w')
prosciutteria.photo.attach(io: file, filename: 'prosciutteria.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 14, day_of_the_week: "Lundi", shop: prosciutteria)
SlotHour.create(opening_hour: 19, closing_hour: 22, day_of_the_week: "Lundi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 14, day_of_the_week: "Mardi", shop: prosciutteria)
SlotHour.create(opening_hour: 19, closing_hour: 22, day_of_the_week: "Mardi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 14, day_of_the_week: "Mercredi", shop: prosciutteria)
SlotHour.create(opening_hour: 19, closing_hour: 22, day_of_the_week: "Mercredi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 14, day_of_the_week: "Jeudi", shop: prosciutteria)
SlotHour.create(opening_hour: 19, closing_hour: 22, day_of_the_week: "Jeudi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 14, day_of_the_week: "Vendredi", shop: prosciutteria)
SlotHour.create(opening_hour: 19, closing_hour: 22, day_of_the_week: "Vendredi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Samedi", shop: prosciutteria)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Samedi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 15, day_of_the_week: "Dimanche", shop: prosciutteria)
SlotHour.create(opening_hour: 19, closing_hour: 23, day_of_the_week: "Dimanche", shop: prosciutteria)

flowers = Shop.create(name: "Flower's Café", address: "6 Place Roger Salengro, 31000 Toulouse", mobile: "0534449366", email: "", category: "Salon de thé", description: "Dans un cadre chaleureux d'épicerie, ce salon de thé sert une petite restauration, des pâtisseries et du thé.", user: julia, average_rate: 4.5)
file = URI.open('https://www.citizenkid.com/uploads/medias/fb/7c/fb7cabadd955abea2ea539c33453118432522402.png')
flowers.photo.attach(io: file, filename: 'flowers.png', content_type: 'image/png')
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Lundi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Mardi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Mercredi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Jeudi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Vendredi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Samedi", shop: flowers)
SlotHour.create(opening_hour: 14, closing_hour: 20, day_of_the_week: "Dimanche", shop: flowers)

alimentation = Shop.create(name: "L'alimentation", address: "24 Place de la Bourse, 31000 Toulouse", mobile: "0561216905", email: "", category: 3, description: "L'Alimentation vous fera découvrir des produits d'exception, soigneusement sélectionnés parmi des artisans et des vignerons de choix.", user: annelaure, average_rate: 4)
file = URI.open('https://nakide.fr/wp-content/uploads/2019/01/NAKIDE-Lalimentation-lepicerie-design-retail-architecture.jpg')
alimentation.photo.attach(io: file, filename: 'alimentation.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: alimentation)

fufu = Shop.create(name: "Fufu Ramen", address: "32 Rue Sainte-Ursule, 31000 Toulouse", mobile: "0562177446", email: "", category: 1, description: "Fufu vous propose de découvrir des plats typiquement japonais comme les ramens, bol de bouillon...", user: julia, average_rate: 4.5)
file = URI.open('https://www.sudissimo.com/wp-content/uploads/2018/01/fufu-noodle-restaurant-toulouse-bordeaux.jpg')
fufu.photo.attach(io: file, filename: 'fufu.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Lundi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Mardi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Mercredi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Jeudi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Vendredi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Samedi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Dimanche", shop: fufu)

boucheb = Shop.create(name: "Bouche b", address: "36 Rue des Filatiers, 31000 Toulouse", mobile: "0561216905", email: "", category: 1, description: "Notre restaurant de burgers au coeur de Toulouse vous propose de déguster nos burgers fait avec des produits frais.", user: annelaure, average_rate: 4)
file = URI.open('https://boucheb.fr/wp-content/uploads/2020/10/BOUCHE-AUTOMNE-scaled.jpg')
boucheb.photo.attach(io: file, filename: 'boucheb.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 15, day_of_the_week: "Lundi", shop: boucheb)
SlotHour.create(opening_hour: 18, closing_hour: 22, day_of_the_week: "Lundi", shop: boucheb)
SlotHour.create(opening_hour: 11, closing_hour: 15, day_of_the_week: "Mardi", shop: boucheb)
SlotHour.create(opening_hour: 18, closing_hour: 22, day_of_the_week: "Mardi", shop: boucheb)
SlotHour.create(opening_hour: 11, closing_hour: 15, day_of_the_week: "Mercredi", shop: boucheb)
SlotHour.create(opening_hour: 18, closing_hour: 22, day_of_the_week: "Mercredi", shop: boucheb)
SlotHour.create(opening_hour: 11, closing_hour: 15, day_of_the_week: "Jeudi", shop: boucheb)
SlotHour.create(opening_hour: 18, closing_hour: 22, day_of_the_week: "Jeudi", shop: boucheb)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Vendredi", shop: boucheb)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Samedi", shop: boucheb)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Dimanche", shop: boucheb)

mamie = Shop.create(name: "Chez Mamie", address: "10 Place de la Trinité, 31000 Toulouse", mobile: "0531225030", email: "", category: 2, description: "Nous vous proposons des produits de qualité, sélectionnés dans la pure tradition bouchère.", user: julia, average_rate: 4.3)
file = URI.open('https://www.boudulemag.com/wp-content/uploads/2021/11/Boudu-magazine-62-f-boucherie-des-copains-minimes-00.jpg')
mamie.photo.attach(io: file, filename: 'mamie.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: mamie)

fournil = Shop.create(name: "Fournil de Pierre", address: "16 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561217484", email: "", category: 0, description: "Notre concept allie tradition et tendance tout en valorisant les produits et le savoir-faire du monde de la boulangerie.", user: annelaure, average_rate: 4.3)
file = URI.open('https://www.toute-la-franchise.com/images/zoom/news-franchise-le-fournil-de-pierre-boulangerie-161215.jpg')
fournil.photo.attach(io: file, filename: 'fournil.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 14, day_of_the_week: "Dimanche", shop: fournil)

lamiecaline = Shop.create(name: "La Mie Câline", address: "9 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561253948", email: "", category: 0, description: "La Mie Câline vous propose pains, viennoiseries, patisseries, sandwichs et salades, pour toutes vos envies.", user: julia, average_rate: 4.0)
file = URI.open('https://rs-menus-api.roocdn.com/images/9302417a-0896-4ad4-8a32-466f82bfd612/image.jpeg')
lamiecaline.photo.attach(io: file, filename: 'lamiecaline.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Dimanche", shop: lamiecaline)

biocoop = Shop.create(name: "Biocoop", address: "7 Place de la Trinité, 31000 Toulouse", mobile: "0534424919", email: "", category: 3, description: "Vous pourrez y trouver des fruits et légumes frais de saison et locaux, du pain frais et tous les produits en vrac d'épicerie", user: annelaure, average_rate: 4.3)
file = URI.open('https://www.biocooptrinite-toulouse.com/images/500/0/docs/97/Abonnements/biocoop-trinite02.jpg')
biocoop.photo.attach(io: file, filename: 'biocoop.png', content_type: 'image/png')
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Lundi", shop: lamiecaline)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mardi", shop: lamiecaline)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mercredi", shop: lamiecaline)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Jeudi", shop: lamiecaline)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Vendredi", shop: lamiecaline)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Samedi", shop: lamiecaline)
SlotHour.create(opening_hour: 9, closing_hour: 12, day_of_the_week: "Dimanche", shop: lamiecaline)

#Creation rentals

puts '----- Creating rentals -----'

Rental.new(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: "En cours", shop: stcyp, user: marina)
Rental.new(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: "Rendu", shop: prosciutteria, user: elliot)
