require 'open-uri'

#Creation users

SelectionRental.destroy_all
Rental.destroy_all
Shop.destroy_all
User.destroy_all
Menu.destroy_all
Rating.destroy_all

puts '----- Creating users -----'

#Status
#3 Petite pousse / Graine
#2 Grand arbre / Petite Fleur
#1 Jardin luxuriant

julia = User.create(name: "Julia", last_name: "Foucher", email: "julia814@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 1 , shop: "true", image_url: ActionController::Base.helpers.image_path('julia.PNG'))
# file = URI.open(ActionController::Base.helpers.image_path('images/julia.PNG'))
# julia.photo.attach(io: file, filename: 'julia.PNG', content_type: 'image/png')

marina = User.create(name: "Marina", last_name: "Magnoli", email: "mgnl.marina@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 0, shop: "false", image_url: ActionController::Base.helpers.image_path('marina.jpg'))

elliot = User.create(name: "Elliot", last_name: "Thyrant", email: "xaron.thyrant@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 2, shop: "false", image_url: ActionController::Base.helpers.image_path('bulbizare.jpg'))

annelaure = User.create(name: "Anne-Laure", last_name: "Le", email: "annelaurele@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 1 , shop: "true", image_url: ActionController::Base.helpers.image_path('bulbizare.jpg'))

#Creation shops

puts '----- Creating shops -----'
#Il y a 23 ID

#----------------TRAITEUR----------------#

stcyp = Shop.create!(name: "Le St Cyp Traiteur", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0567687719", email: "", category: 4, description: "Un traiteur de quartier à ne pas manquer ! Tous les plats sont généraux, faits maison avec des produits locaux.", user: julia, average_rate: 4.8, longitude: 43.59780656594087, latitude: 1.4293462494881448)
file = URI.open('https://images.ladepeche.fr/api/v1/images/view/5fbcbc7f8fe56f66601477c8/large/image.jpg?v=1')
stcyp.photo.attach(io: file, filename: 'stcyp.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 20, day_of_the_week: "Lundi", shop: stcyp)
SlotHour.create(opening_hour: 11, closing_hour: 20, day_of_the_week: "Mardi", shop: stcyp)
SlotHour.create(opening_hour: 11, closing_hour: 20, day_of_the_week: "Mercredi", shop: stcyp)
SlotHour.create(opening_hour: 11, closing_hour: 20, day_of_the_week: "Jeudi", shop: stcyp)
SlotHour.create(opening_hour: 11, closing_hour: 20, day_of_the_week: "Vendredi", shop: stcyp)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: stcyp)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Dimanche", shop: stcyp)

officina = Shop.create!(name: "Officina Gusto", address: "7 Place Saint-Étienne, 31000 Toulouse", mobile: "0564285986", email: "", category: 4, description: "Un traiteur qui vous amènera tout droit en Italie ! Toutes les spécialités italiennes à découvrir sans modération !", user: julia, average_rate: 4.2, longitude: 43.60180718785402, latitude: 1.4402083709321905)
file = URI.open('http://foodandsens.com/wp-content/uploads/2020/05/Capture-d%E2%80%99%C3%A9cran-2020-04-28-%C3%A0-16.06.40-800x597.png')
officina.photo.attach(io: file, filename: 'officina.png', content_type: 'image/png')
SlotHour.create(opening_hour: 8, closing_hour: 19, day_of_the_week: "Lundi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 19, day_of_the_week: "Mardi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Mercredi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Jeudi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Vendredi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Samedi", shop: officina)

zen = Shop.create!(name: "Zen-Saï", address: "2 Rue Jean Suau, 31000 Toulouse", mobile: "0561120000", email: "", category: 4, description: "Une cuisine recherchée alliant la culture japonaise et le savoir européen. Zen-saï signifie « ce qui vient avant la carte ».", user: annelaure, average_rate: 4.5, longitude: 43.60034721778966, latitude: 1.4485310846583597)
file = URI.open('https://www.sortiraparis.com/images/80/93806/639770-delices-lepic.jpg')
zen.photo.attach(io: file, filename: 'zen.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Lundi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Mardi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Mercredi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Jeudi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Vendredi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Samedi", shop: zen)

salomé = Shop.create!(name: "Chez Salomé", address: "1 Place des Carmes, 31000 Toulouse", mobile: "0686235886", email: "", category: 4, description: "Traiteur maison : plat revisités au goût du jour, faits uniquement avec des produits locaux. Le tout à emporter !", user: julia, average_rate: 3.5, longitude: 43.59775603780177, latitude: 1.4448161153416401)
file = URI.open('https://www.marciatack.fr/wp-content/uploads/2019/01/quiche-epaisse.jpg')
salomé.photo.attach(io: file, filename: 'salomé.png', content_type: 'image/png')
SlotHour.create(opening_hour: 9, closing_hour: 14, day_of_the_week: "Lundi", shop: salomé)
SlotHour.create(opening_hour: 9, closing_hour: 14, day_of_the_week: "Mardi", shop: salomé)
SlotHour.create(opening_hour: 9, closing_hour: 14, day_of_the_week: "Mercredi", shop: salomé)
SlotHour.create(opening_hour: 9, closing_hour: 14, day_of_the_week: "Jeudi", shop: salomé)
SlotHour.create(opening_hour: 9, closing_hour: 14, day_of_the_week: "Vendredi", shop: salomé)
SlotHour.create(opening_hour: 9, closing_hour: 14, day_of_the_week: "Samedi", shop: salomé)
SlotHour.create(opening_hour: 9, closing_hour: 14, day_of_the_week: "Dimanche", shop: salomé)

#----------------RESTAURANT----------------#

primalova = Shop.create!(name: "Prima Lova", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0561447278", email: "", category: 3, description: "On retrouve chez Prima Lova les ingrédients qui font le succès de la trattoria. Et surtout toute la générosité de l'Italie.", user: annelaure, average_rate: 4.5, longitude: 43.602035340240924, latitude: 1.4437255821869301)
file = URI.open('https://static.actu.fr/uploads/2020/07/img-20200707-wa0002.jpg')
primalova.photo.attach(io: file, filename: 'primalova.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 00, day_of_the_week: "Lundi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 00, day_of_the_week: "Mardi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 00, day_of_the_week: "Mercredi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 00, day_of_the_week: "Jeudi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 00, day_of_the_week: "Vendredi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 00, day_of_the_week: "Samedi", shop: primalova)
SlotHour.create(opening_hour: 12, closing_hour: 00, day_of_the_week: "Dimanche", shop: primalova)

fufu = Shop.create!(name: "Fufu Ramen", address: "32 Rue Sainte-Ursule, 31000 Toulouse", mobile: "0562177446", email: "", category: 1, description: "Fufu Ramen est une cantine traditionnelle japonaise qui vous propose des plats typiquement japonais comme les ramen. ", user: julia, average_rate: 4.5, longitude: 43.60298761626409, latitude: 1.4428975892359728)
file = URI.open('https://www.sudissimo.com/wp-content/uploads/2018/01/fufu-noodle-restaurant-toulouse-bordeaux.jpg')
fufu.photo.attach(io: file, filename: 'fufu.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Lundi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Mardi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Mercredi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Jeudi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Vendredi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Samedi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Dimanche", shop: fufu)

boucheb = Shop.create!(name: "Bouche b", address: "36 Rue des Filatiers, 31000 Toulouse", mobile: "0561216905", email: "", category: 1, description: "Notre restaurant de burgers au coeur de Toulouse vous propose de déguster nos burgers fait avec des produits frais.", user: annelaure, average_rate: 4, longitude: 43.59910042379399, latitude: 1.4447365241735175)
file = URI.open('https://boucheb.fr/wp-content/uploads/2020/10/BOUCHE-AUTOMNE-scaled.jpg')
boucheb.photo.attach(io: file, filename: 'boucheb.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Lundi", shop: boucheb)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Mardi", shop: boucheb)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Mercredi", shop: boucheb)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Jeudi", shop: boucheb)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Vendredi", shop: boucheb)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Samedi", shop: boucheb)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Dimanche", shop: boucheb)

prosciutteria = Shop.create!(name: "Prosciutteria", address: "31 Rue des Filatiers, 31000 Toulouse", mobile: "0971216499", email: "", category: 1, description: "Des paninis XXL, des bruschettone, des salades gourmandes et de belles planches de charcuterie fines et fromages.", user: annelaure, average_rate: 4.5, longitude: 43.59904560254555, latitude: 1.4446076260213983)
file = URI.open('https://images.squarespace-cdn.com/content/v1/5d3ace69b3d0000001bcaebf/1564415113289-BIMI49JLL2O616OE7EJ3/prosciutteria.jpg?format=1000w')
prosciutteria.photo.attach(io: file, filename: 'prosciutteria.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Lundi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Mardi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Mercredi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Jeudi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Vendredi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Samedi", shop: prosciutteria)
SlotHour.create(opening_hour: 12, closing_hour: 23, day_of_the_week: "Dimanche", shop: prosciutteria)

leSaintSauvage = Shop.create!(name: "Le Saint Sauvage", address: "20 Rue des Salenques, 31000 Toulouse", mobile: "0561235686", email: "", category: 1, description: "Table gastronomique à l'éclairage tamisé, entre chaises transparentes, fauteuils en velours et miroirs dorés.", user: annelaure, average_rate: 4.6)
file = URI.open('https://www.biocooptrinite-toulouse.com/images/500/0/docs/97/Abonnements/biocoop-trinite02.jpg')
leSaintSauvage.photo.attach(io: file, filename: 'biocoop.png', content_type: 'image/png')
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Lundi", shop: leSaintSauvage)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mardi", shop: leSaintSauvage)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mercredi", shop: leSaintSauvage)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Jeudi", shop: leSaintSauvage)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Vendredi", shop: leSaintSauvage)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Samedi", shop: leSaintSauvage)
SlotHour.create(opening_hour: 9, closing_hour: 12, day_of_the_week: "Dimanche", shop: leSaintSauvage)

#----------------SALON DE THÉ----------------#

chapristea = Shop.create!(name: "Chapristea", address: "4 Rue Jules Chalande, 31000 Toulouse", mobile: "0983584945", email: "", category: 5, description: "Le Chapristea est un « bar à chats » où vous pouvez profiter d'une pause gourmande en compagnie des félins.", user: julia, average_rate: 4.5, longitude: 43.60241434815086, latitude: 1.4444302646549578)
file = URI.open('https://static.actu.fr/uploads/2016/10/Chapristea-960x640.jpg')
chapristea.photo.attach(io: file, filename: 'chapristea.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Lundi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Mardi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Mercredi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Jeudi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Vendredi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Samedi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Dimanche", shop: chapristea)

flowers = Shop.create!(name: "Flower's Café", address: "6 Place Roger Salengro, 31000 Toulouse", mobile: "0534449366", email: "", category: 5, description: "Dans un cadre chaleureux d'épicerie, ce salon de thé sert une petite restauration, des pâtisseries et du thé.", user: julia, average_rate: 4.5, longitude: 43.60300400879243, latitude: 1.4456875260215467)
file = URI.open('https://www.citizenkid.com/uploads/medias/fb/7c/fb7cabadd955abea2ea539c33453118432522402.png')
flowers.photo.attach(io: file, filename: 'flowers.png', content_type: 'image/png')
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Lundi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Mardi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Mercredi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Jeudi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Vendredi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Samedi", shop: flowers)
SlotHour.create(opening_hour: 14, closing_hour: 20, day_of_the_week: "Dimanche", shop: flowers)

autre = Shop.create!(name: "L'autre salon", address: "45 Rue des Tourneurs, 31000 Toulouse", mobile: "0534449366", email: "", category: 5, description: "Endroit idéal pour faire une pause gourmande et sucrée ! Le paradis des pâtisseries faites maison et des boissons chaudes.", user: annelaure, average_rate: 3.7, longitude: 43.6015888057811, latitude: 1.4449899153416401)
file = URI.open('https://i.pinimg.com/originals/4d/24/31/4d243165934becd4192b4f1c18e2168a.jpg')
autre.photo.attach(io: file, filename: 'autre.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 20, day_of_the_week: "Lundi", shop: autre)
SlotHour.create(opening_hour: 12, closing_hour: 20, day_of_the_week: "Mardi", shop: autre)
SlotHour.create(opening_hour: 12, closing_hour: 20, day_of_the_week: "Mercredi", shop: autre)
SlotHour.create(opening_hour: 12, closing_hour: 20, day_of_the_week: "Jeudi", shop: autre)
SlotHour.create(opening_hour: 12, closing_hour: 20, day_of_the_week: "Vendredi", shop: autre)
SlotHour.create(opening_hour: 12, closing_hour: 20, day_of_the_week: "Samedi", shop: autre)
SlotHour.create(opening_hour: 12, closing_hour: 20, day_of_the_week: "Dimanche", shop: autre)

#----------------ÉPICERIE----------------#

alimentation = Shop.create!(name: "L'alimentation", address: "24 Place de la Bourse, 31000 Toulouse", mobile: "0561216905", email: "", category: 3, description: "L'Alimentation vous fera découvrir des produits d'exception, soigneusement sélectionnés parmi des artisans de choix.", user: annelaure, average_rate: 4, longitude: 43.601466143372896, latitude: 1.4428948622483697)
file = URI.open('https://nakide.fr/wp-content/uploads/2019/01/NAKIDE-Lalimentation-lepicerie-design-retail-architecture.jpg')
alimentation.photo.attach(io: file, filename: 'alimentation.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: alimentation)

biocoop = Shop.create!(name: "Biocoop", address: "7 Place de la Trinité, 31000 Toulouse", mobile: "0534424919", email: "", category: 3, description: "Vous pourrez y trouver des fruits et légumes frais de saison et locaux, du pain frais et tous les produits en vrac d'épicerie", user: annelaure, average_rate: 4.3, longitude: 43.599937791716464, latitude: 1.4448434548568247)
file = URI.open('https://ad962edbae8ba7b03b7f-d10007df79b5b7a4e475a291e50a08cf.ssl.cf3.rackcdn.com/2104/ouvrir-un-primeur.jpg')
biocoop.photo.attach(io: file, filename: 'biocoop.png', content_type: 'image/png')
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Lundi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mardi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mercredi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Jeudi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Vendredi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Samedi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 12, day_of_the_week: "Dimanche", shop: biocoop)

paradis = Shop.create!(name: "Le Paradis Gourmet", address: "15 Rue des Puits Clos, 31000 Toulouse", mobile: "0561227658", email: "", category: 3, description: "Vous pourrez y découvrir toutes les spécialités de notre région. Le paradis du sucré mais aussi du salé !", user: annelaure, average_rate: 4.2, longitude: 43.602457517290965, latitude: 1.4445637267551485)
file = URI.open('https://leparadisgourmet.fr/img/paradis-gourmet-toulouse.jpg')
paradis.photo.attach(io: file, filename: 'paradis.png', content_type: 'image/png')
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Mardi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Mercredi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Jeudi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Vendredi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Samedi", shop: paradis)

#----------------BOUCHERIE----------------#

mamie = Shop.create!(name: "Chez Mamie", address: "10 Place de la Trinité, 31000 Toulouse", mobile: "0531225030", email: "", category: 2, description: "Nous vous proposons des produits de qualité, sélectionnés dans la pure tradition bouchère française.", user: julia, average_rate: 4.3, longitude: 43.59979350071048, latitude: 1.4449600818443762)
file = URI.open('https://www.boudulemag.com/wp-content/uploads/2021/11/Boudu-magazine-62-f-boucherie-des-copains-minimes-00.jpg')
mamie.photo.attach(io: file, filename: 'mamie.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: mamie)

coterie = Shop.create!(name: "La Coterie Française", address: "19 Place de la Bourse, 31000 Toulouse", mobile: "0768335546", email: "", category: 2, description: "Viande saine, de qualité, et durable pour les plus gourmands. Toutes nos viandes sont élevées dans la région.", user: annelaure, average_rate: 4.0, longitude: 43.60161481556959, latitude: 1.44215321534164)
file = URI.open('https://www.meetpro.fr/wp-content/uploads/2018/11/AdobeStock_145257590-e1565683596225.jpeg')
coterie.photo.attach(io: file, filename: 'coterie.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: coterie)

boyer = Shop.create!(name: "Boucherie Boyer", address: "62 Rue de Metz, 31000 Toulouse", mobile: "0561220039", email: "", category: 2, description: "La Maison Boyer à le plaisir de vous choisir des produits d'excellente qualité en boucherie, charcuterie et traiteur.", user: annelaure, average_rate: 4.9, longitude: 43.60097246553297, latitude: 1.450797246024921)
file = URI.open('https://www.sobio.fr/wp-content/uploads/2020/07/CV_20140626_3639.jpg')
boyer.photo.attach(io: file, filename: 'boyer.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: boyer)

#----------------BOULANGERIE----------------#

fournil = Shop.create!(name: "Fournil de Pierre", address: "16 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561217484", email: "", category: 0, description: "Notre concept allie tradition et tendance tout en valorisant les produits et le savoir-faire du monde de la boulangerie.", user: annelaure, average_rate: 4.3, longitude: 43.60213073215985, latitude: 1.4484790052385068)
file = URI.open('https://www.toute-la-franchise.com/images/zoom/news-franchise-le-fournil-de-pierre-boulangerie-161215.jpg')
fournil.photo.attach(io: file, filename: 'fournil.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 14, day_of_the_week: "Dimanche", shop: fournil)

lamiecaline = Shop.create!(name: "La Mie Câline", address: "9 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561253948", email: "", category: 0, description: "La Mie Câline vous propose pains, viennoiseries, patisseries, sandwichs et salades, pour toutes vos envies.", user: julia, average_rate: 4.0, longitude: 43.600284130003836, latitude: 1.4448180358194644)
file = URI.open('https://rs-menus-api.roocdn.com/images/9302417a-0896-4ad4-8a32-466f82bfd612/image.jpeg')
lamiecaline.photo.attach(io: file, filename: 'lamiecaline.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Dimanche", shop: lamiecaline)

panetiere = Shop.create!(name: "La Panetière", address: "2 Rue de Metz, 31000 Toulouse", mobile: "0561732990", email: "", category: 0, description: "Le goût du bien-manger. Des produits frais, sains et équilibrés pour une pause gourmande réussie !", user: annelaure, average_rate: 3.7, longitude: 43.599880939608894, latitude: 1.441918695513136)
file = URI.open('https://www.lapanetiere.fr/images/panetiere-toulouse-lafourcade16.jpg?crc=46408542')
panetiere.photo.attach(io: file, filename: 'panetiere.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Dimanche", shop: panetiere)

perlette = Shop.create!(name: "Perlette", address: "57 Rue des Filatiers, 31000 Toulouse", mobile: "0982366046", email: "", category: 0, description: "Perlette propose des pâtisseries sur place ou à emporter, mais aussi des menus salés pour une pause bien méritée.", user: julia, average_rate: 4.5, longitude: 43.599880939608894, latitude: 1.441918695513136)
file = URI.open('https://www.luckymiam.com/wp-content/uploads/perlette-lucky-miam-9.jpg')
perlette.photo.attach(io: file, filename: 'perlette.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: perlette)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: perlette)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: perlette)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: perlette)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: perlette)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: perlette)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Dimanche", shop: perlette)

#Creation rentals

puts '----- Creating rentals -----'

Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 0, shop: stcyp, user: elliot, total_of_box: 1)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 1, shop: prosciutteria, user: elliot, total_of_box: 1)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 2, shop: biocoop, user: elliot, total_of_box: 1)

Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 0, shop: stcyp, user: julia, total_of_box: 1)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 1, shop: prosciutteria, user: julia, total_of_box: 1)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 2, shop: biocoop, user: julia, total_of_box: 1)

Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 0, shop: stcyp, user: annelaure, total_of_box: 1)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 1, shop: prosciutteria, user: annelaure, total_of_box: 1)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 2, shop: biocoop, user: annelaure, total_of_box: 1)

#Creation menus

puts '----- Creating menus -----'

#----------------LA MIE CALINE----------------#
salade3 = Menu.create(name: "Salade César", description: "La classique salade césar composée de poulet, oeuf, parmesan et huile d'olive.", price: 8, number_of_box: 1, shop: lamiecaline)
file = URI.open('https://assets.afcdn.com/recipe/20200212/107449_w1024h1024c1cx1060cy707.webp')
salade3.photo.attach(io: file, filename: 'salade3.png', content_type: 'image/png')
salade4 = Menu.create(name: "Salade Poké", description: "Une salade inspirée du poke bowl.", price: 8, number_of_box: 1, shop: lamiecaline)
file = URI.open('https://dxm.dam.savencia.com/api/wedia/dam/transform/fix635d9eidk9oox7szq1s3wqskwhzxeoyjydge/800?t=resize&width=800')
salade4.photo.attach(io: file, filename: 'salade4.png', content_type: 'image/png')
pizza3 = Menu.create(name: "Pizza aux fromages", description: "Pizza individuelle généreusement garnie de 4 fromages.", price: 4, number_of_box: 1, shop: lamiecaline)
file = URI.open('https://img.cuisineaz.com/660x660/2021/02/25/i159373-pizza-margherita.jpeg')
pizza3.photo.attach(io: file, filename: 'pizza3.png', content_type: 'image/png')
pizza4 = Menu.create(name: "Pizza lardons champignons", description: "Pâte à pizza, coulis de tomate, lardons, champignons, emmental, mozzarella.", price: 4, number_of_box: 1, shop: lamiecaline)
file = URI.open('https://assets.afcdn.com/recipe/20200206/107152_w1024h1024c1cx176cy267cxb353cyb535.jpg')
pizza4.photo.attach(io: file, filename: 'pizza4.png', content_type: 'image/png')
quiche3 =Menu.create(name: "Quiche poireaux saumon", description: "Une pâte feuilletée garnie d'un appareil onctueux composé d'oeufs, de crème et de mozzarella...", price: 4, number_of_box: 1, shop: lamiecaline)
file = URI.open('https://mediacenter.bonduelle.com/cdn/201902/FRA0110_QUICHE_AUX_EPINARDS_ET_CHEVRE_HAUTE_DEFINITION_011650.jpg')
quiche3.photo.attach(io: file, filename: 'salade3.png', content_type: 'image/png')
quiche4 = Menu.create(name: "Quiche lorraine", description: "Une pâte feuilletée garnie d'un appareil onctueux composé d'oeufs, de crème et de mozzarella...", price: 4, number_of_box: 1, shop: lamiecaline)
file = URI.open('https://img.cuisineaz.com/660x660/2015/03/11/i91026-quiche-lorraine-traditionnelle.jpg')
quiche4.photo.attach(io: file, filename: 'salade4.png', content_type: 'image/png')

#----------------FOURNIL DE PIERRE----------------#
salade1 = Menu.create(name: "La salade tomate mozza", description: "Tomate, mozzarella, pesto, pâtes serpentini, roquette.", price: 7, number_of_box: 1, shop: fournil)
file = URI.open('https://m.bettybossi.ch/static/rezepte/x/bb_mcco170508_0010a_x.jpg')
salade1.photo.attach(io: file, filename: 'salade1.png', content_type: 'image/png')
salade2 = Menu.create(name: "La salade César", description: "Poulet rôti mariné citron-romarin, oeuf poché, bacon, chiffonnade Cantal AOP, tomates cerises, croûtons, batavia, ciboulette.", price: 7, number_of_box: 1, shop: fournil)
file = URI.open('https://assets.afcdn.com/recipe/20200212/107449_w1024h1024c1cx1060cy707.webp')
salade2.photo.attach(io: file, filename: 'salade2.png', content_type: 'image/png')
quiche1 = Menu.create(name: "Quiche chèvre épinard", description: "Pâte brisée, chèvre, épinard, fromage frais, crème fraîche, oeuf.", price: 5, number_of_box: 1, shop: fournil)
file = URI.open('https://mediacenter.bonduelle.com/cdn/201902/FRA0110_QUICHE_AUX_EPINARDS_ET_CHEVRE_HAUTE_DEFINITION_011650.jpg')
quiche1.photo.attach(io: file, filename: 'quiche1.png', content_type: 'image/png')
quiche2 = Menu.create(name: "Quiche lorraine", description: "Pâte brisée, jambon*, lardons*, emmental, crème fraîche, oeuf.", price: 5, number_of_box: 1, shop: fournil)
file = URI.open('https://img.cuisineaz.com/660x660/2015/03/11/i91026-quiche-lorraine-traditionnelle.jpg')
quiche2.photo.attach(io: file, filename: 'quiche2.png', content_type: 'image/png')

#----------------PANETIERE----------------#
poke1 = Menu.create!(name: "Poké bowl saumon", description: "Riz, mangue, jeune pousse d'épinard, tomate cerise, saumon fumé, pavot, vinaigrette au soja et gingembre.", price: 9, number_of_box: 1, shop: panetiere)
file = URI.open('https://dxm.dam.savencia.com/api/wedia/dam/transform/fix635d9eidk9oox7szq1s3wqskwhzxeoyjydge/800?t=resize&width=800')
poke1.photo.attach(io: file, filename: 'poke1.png', content_type: 'image/png')
taboule1 = Menu.create(name: "Taboulé libanais", description: "Taboulais libanais, feuille de batavia, boulette falafel, tomate cerise.", price: 7, number_of_box: 1, shop: panetiere)
file = URI.open('http://www.drive-patrick-filles.com/161-thickbox_default/taboulet-a-la-menthe-fraiche-200gr.jpg')
taboule1.photo.attach(io: file, filename: 'taboule1.png', content_type: 'image/png')
pizza1 = Menu.create(name: "Pizza royale", description: "Sauce tomate, fromage râpé, champignon, jambon blanc, olive noire, herbes de Provence.", price: 3, number_of_box: 1, shop: panetiere)
file = URI.open('https://img.cuisineaz.com/660x660/2021/02/25/i159373-pizza-margherita.jpeg')
pizza1.photo.attach(io: file, filename: 'pizza1.png', content_type: 'image/png')
pizza2 = Menu.create(name: "Pizza Margarita", description: "Sauce tomate, fromage râpé, olive noire, herbes de Provence.", price: 3, number_of_box: 1, shop: panetiere)
file = URI.open('https://assets.afcdn.com/recipe/20200206/107152_w1024h1024c1cx176cy267cxb353cyb535.jpg')
pizza2.photo.attach(io: file, filename: 'pizza2.png', content_type: 'image/png')
croque1 = Menu.create(name: "Croque boulanger poulet", description: "Pain multi-graînes, poulet, bechamel, fromage, sel, poivre.", price: 5, number_of_box: 1, shop: panetiere)
file = URI.open('https://chefcuisto.com/files/2014/10/croque-monsieur-1.jpg')
croque1.photo.attach(io: file, filename: 'croque1.png', content_type: 'image/png')
croque2 = Menu.create(name: "Croque boulanger jambon", description: "Pain multi-graînes, jambon, bechamel, fromage, sel, poivre.", price: 5, number_of_box: 1, shop: panetiere)
file = URI.open('https://www.delizioso.fr/wp-content/uploads/2019/09/croque-monsieur-poulet-%C3%A9pinards.jpg')
croque2.photo.attach(io: file, filename: 'croque2.png', content_type: 'image/png')

#----------------PERLETTE----------------#
bagle1 = Menu.create(name: "Bagel cream cheese & saumon", description: "Pain pavot, cream cheese, saumon fumé, aneth.", price: 3, number_of_box: 1, shop: perlette)
file = URI.open('https://static1.terrafemina.com/articles/4/34/24/24/@/504154-recette-de-bagle-pour-l-ete-953x0-2.jpg')
bagle1.photo.attach(io: file, filename: 'bagle1.png', content_type: 'image/png')
bagle2 = Menu.create(name: "Bagel poulet curry", description: "Pain pavot, poulet, curry, moutarde, roquette.", price: 3, number_of_box: 1, shop: perlette)
file = URI.open('https://media-cdn.tripadvisor.com/media/photo-s/0f/01/03/08/salmon-bagle-honey-something.jpg')
bagle2.photo.attach(io: file, filename: 'bagle2.png', content_type: 'image/png')
dessert1 = Menu.create!(name: "Miss Perlette", description: "Crème légère mascarpone vanillée, framboises fraîches, meringues craquantes et fondantes.", price: 4, number_of_box: 1, shop: perlette)
file = URI.open('https://www.rustica.fr/images/211503702-1-l760-h550.jpg')
dessert1.photo.attach(io: file, filename: 'dessert1.png', content_type: 'image/png')
dessert2 = Menu.create(name: "Le Banoffee", description: "Tartelette spéculoos, caramel, bananes, crème montée.", price: 4, number_of_box: 1, shop: perlette)
file = URI.open('https://static.750g.com/images/600-600/daf368733445291fbea90ee8f03c7fa1/banoffee.jpg')
dessert2.photo.attach(io: file, filename: 'dessert2.png', content_type: 'image/png')

#Creation reviews

puts '----- Creating reviews -----'

Rating.create!(rating: 5, shop: perlette, user: julia, content: "J'adore cette boulangerie ! Leur pizza est bonne")
Rating.create!(rating: 5, shop: perlette, user: elliot, content: "La meilleure boulangerie de Toulouse !")
Rating.create!(rating: 4, shop: perlette, user: annelaure, content: "Vendeuse pas aimable et mais le pain est bon")
Rating.create!(rating: 4, shop: perlette, user: marina, content: "J'aime bien, ça va")
Rating.create!(rating: 3, shop: panetiere, user: julia, content: "Boulangerie sympa mais pas incroyable")
Rating.create!(rating: 4, shop: panetiere, user: elliot, content: "Vendeuse pas très aimable mais le pain est bon")
Rating.create!(rating: 3, shop: panetiere, user: annelaure, content: "J'y vais de temps en temps, je vous conseille la salade")
Rating.create!(rating: 2, shop: panetiere, user: marina, content: "Pratique mais pas aimable")
