require 'open-uri'

#Creation users

Rental.destroy_all
Shop.destroy_all
User.destroy_all
Menu.destroy_all

puts '----- Creating users -----'

#Status
#3 Petite pousse
#2 Grand arbre
#1 Jardin luxuriant

julia = User.create(name: "Julia", last_name: "Foucher", email: "julia814@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 1 , shop: "true", image_url: ActionController::Base.helpers.image_path('julia.PNG'))
# file = URI.open(ActionController::Base.helpers.image_path('images/julia.PNG'))
# julia.photo.attach(io: file, filename: 'julia.PNG', content_type: 'image/png')

marina = User.create(name: "Marina", last_name: "Magnoli", email: "mgnl.marina@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 0, shop: "false", image_url: ActionController::Base.helpers.image_path('marina.jpg'))

elliot = User.create(name: "Elliot", last_name: "Thyrant", email: "xaron.thyrant@gmail.com", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 2, shop: "false", image_url: ActionController::Base.helpers.image_path('arbre.jpg'))

annelaure = User.create(name: "Anne-Laure", last_name: "Le", email: "annelaurele@hotmail.fr", password: "12345678", address: "16 place Etienne Esquirol 31000 Toulouse", mobile: "0617373935", status: 1 , shop: "true", image_url: ActionController::Base.helpers.image_path('arbre.jpg'))

#Creation shops

puts '----- Creating shops -----'
#Il y a 23 ID

#----------------TRAITEUR----------------#

stcyp = Shop.create(id: 1, name: "Le St Cyp Traiteur", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0567687719", email: "", category: 4, description: "Un généreux traiteur de quartier à ne pas manquer !", user: julia, average_rate: 4.8, longitude: 43.59780656594087, latitude: 1.4293462494881448)
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

officina = Shop.create(id: 17, name: "Officina Gusto", address: "7 Place Saint-Étienne, 31000 Toulouse", mobile: "0564285986", email: "", category: 4, description: "Un traiteur qui vous amènera tout droit en Italie !", user: julia, average_rate: 4.2, longitude: 43.60180718785402, latitude: 1.4402083709321905)
file = URI.open('http://foodandsens.com/wp-content/uploads/2020/05/Capture-d%E2%80%99%C3%A9cran-2020-04-28-%C3%A0-16.06.40-800x597.png')
officina.photo.attach(io: file, filename: 'officina.png', content_type: 'image/png')
SlotHour.create(opening_hour: 8, closing_hour: 19, day_of_the_week: "Lundi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 19, day_of_the_week: "Mardi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Mercredi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Jeudi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Vendredi", shop: officina)
SlotHour.create(opening_hour: 8, closing_hour: 00, day_of_the_week: "Samedi", shop: officina)

zen = Shop.create(id: 18, name: "Zen-Saï", address: "2 Rue Jean Suau, 31000 Toulouse", mobile: "0561120000", email: "", category: 4, description: "Une cuisine recherchée alliant la culture japonaise et le savoir européen.", user: annelaure, average_rate: 4.5, longitude: 43.60034721778966, latitude: 1.4485310846583597)
file = URI.open('https://www.sortiraparis.com/images/80/93806/639770-delices-lepic.jpg')
zen.photo.attach(io: file, filename: 'zen.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Lundi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Mardi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Mercredi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Jeudi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Vendredi", shop: zen)
SlotHour.create(opening_hour: 12, closing_hour: 22, day_of_the_week: "Samedi", shop: zen)

salomé = Shop.create(id: 19, name: "Chez Salomé", address: "1 Place des Carmes, 31000 Toulouse", mobile: "0686235886", email: "", category: 4, description: "Traiteur maison : plat revisités au goût du jour à emporter", user: julia, average_rate: 3.5, longitude: 43.59775603780177, latitude: 1.4448161153416401)
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

primalova = Shop.create(id: 2, name: "Prima Lova", address: "1 Place de la Bourse, 31000 Toulouse", mobile: "0561447278", email: "", category: 3, description: "On retrouve chez Prima Lova les ingrédients qui font le succès de la trattoria. Et surtout toute la générosité de l'Italie.", user: annelaure, average_rate: 4.5, longitude: 43.602035340240924, latitude: 1.4437255821869301)
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

fufu = Shop.create(id: 7, name: "Fufu Ramen", address: "32 Rue Sainte-Ursule, 31000 Toulouse", mobile: "0562177446", email: "", category: 1, description: "Fufu vous propose de découvrir des plats typiquement japonais comme les ramens, bol de bouillon...", user: julia, average_rate: 4.5, longitude: 43.60298761626409, latitude: 1.4428975892359728)
file = URI.open('https://www.sudissimo.com/wp-content/uploads/2018/01/fufu-noodle-restaurant-toulouse-bordeaux.jpg')
fufu.photo.attach(io: file, filename: 'fufu.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Lundi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Mardi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Mercredi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Jeudi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Vendredi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Samedi", shop: fufu)
SlotHour.create(opening_hour: 11, closing_hour: 23, day_of_the_week: "Dimanche", shop: fufu)

boucheb = Shop.create(id: 8, name: "Bouche b", address: "36 Rue des Filatiers, 31000 Toulouse", mobile: "0561216905", email: "", category: 1, description: "Notre restaurant de burgers au coeur de Toulouse vous propose de déguster nos burgers fait avec des produits frais.", user: annelaure, average_rate: 4, longitude: 43.59910042379399, latitude: 1.4447365241735175)
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

prosciutteria = Shop.create(id: 4, name: "Prosciutteria Toulouse", address: "31 Rue des Filatiers, 31000 Toulouse", mobile: "0971216499", email: "", category: 1, description: "Nous proposons d’incroyables paninis XXL, des bruschettone, des salades gourmandes ainsi que de belles planches de charcuterie fines et fromages.", user: annelaure, average_rate: 4.5, longitude: 43.59904560254555, latitude: 1.4446076260213983)
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

leSaintSauvage = Shop.create(id: 13, name: "Le Saint Sauvage", address: "20 Rue des Salenques, 31000 Toulouse", mobile: "0561235686", email: "", category: 1, description: "Table gastronomique à l'éclairage tamisé, entre chaises transparentes, fauteuils en velours et miroirs dorés.", user: annelaure, average_rate: 4.6)
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

chapristea = Shop.create(id: 3, name: "Chapristea", address: "4 Rue Jules Chalande, 31000 Toulouse", mobile: "0983584945", email: "", category: 5, description: "Le Chapristea est un « Bar à chats » où vous pouvez profiter d'une pause gourmande en compagnie des félins.", user: julia, average_rate: 4.5, longitude: 43.60241434815086, latitude: 1.4444302646549578)
file = URI.open('https://static.actu.fr/uploads/2016/10/Chapristea-960x640.jpg')
chapristea.photo.attach(io: file, filename: 'chapristea.png', content_type: 'image/png')
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Lundi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Mardi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Mercredi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Jeudi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Vendredi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Samedi", shop: chapristea)
SlotHour.create(opening_hour: 12, closing_hour: 19, day_of_the_week: "Dimanche", shop: chapristea)

flowers = Shop.create(id: 5, name: "Flower's Café", address: "6 Place Roger Salengro, 31000 Toulouse", mobile: "0534449366", email: "", category: 5, description: "Dans un cadre chaleureux d'épicerie, ce salon de thé sert une petite restauration, des pâtisseries et du thé.", user: julia, average_rate: 4.5, longitude: 43.60300400879243, latitude: 1.4456875260215467)
file = URI.open('https://www.citizenkid.com/uploads/medias/fb/7c/fb7cabadd955abea2ea539c33453118432522402.png')
flowers.photo.attach(io: file, filename: 'flowers.png', content_type: 'image/png')
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Lundi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Mardi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Mercredi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Jeudi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Vendredi", shop: flowers)
SlotHour.create(opening_hour: 10, closing_hour: 20, day_of_the_week: "Samedi", shop: flowers)
SlotHour.create(opening_hour: 14, closing_hour: 20, day_of_the_week: "Dimanche", shop: flowers)

autre = Shop.create(id: 20, name: "L'autre salon de thé", address: "45 Rue des Tourneurs, 31000 Toulouse", mobile: "0534449366", email: "", category: 5, description: "Endroit idéal pour faire une pause gourmande !", user: annelaure, average_rate: 3.7, longitude: 43.6015888057811, latitude: 1.4449899153416401)
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

alimentation = Shop.create(id: 6, name: "L'alimentation", address: "24 Place de la Bourse, 31000 Toulouse", mobile: "0561216905", email: "", category: 3, description: "L'Alimentation vous fera découvrir des produits d'exception, soigneusement sélectionnés parmi des artisans et des vignerons de choix.", user: annelaure, average_rate: 4, longitude: 43.601466143372896, latitude: 1.4428948622483697)
file = URI.open('https://nakide.fr/wp-content/uploads/2019/01/NAKIDE-Lalimentation-lepicerie-design-retail-architecture.jpg')
alimentation.photo.attach(io: file, filename: 'alimentation.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: alimentation)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: alimentation)

biocoop = Shop.create(id: 12, name: "Biocoop", address: "7 Place de la Trinité, 31000 Toulouse", mobile: "0534424919", email: "", category: 3, description: "Vous pourrez y trouver des fruits et légumes frais de saison et locaux, du pain frais et tous les produits en vrac d'épicerie", user: annelaure, average_rate: 4.3, longitude: 43.599937791716464, latitude: 1.4448434548568247)
file = URI.open('https://monpetit20e.com/wp-content/uploads/2020/11/primeurspre%CC%81fe%CC%81re%CC%81s.jpg')
biocoop.photo.attach(io: file, filename: 'biocoop.png', content_type: 'image/png')
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Lundi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mardi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Mercredi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Jeudi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Vendredi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 20, day_of_the_week: "Samedi", shop: biocoop)
SlotHour.create(opening_hour: 9, closing_hour: 12, day_of_the_week: "Dimanche", shop: biocoop)

paradis = Shop.create(id: 21, name: "Le Paradis Gourmet", address: "15 Rue des Puits Clos, 31000 Toulouse", mobile: "0561227658", email: "", category: 3, description: "Vous pourrez y découvrir toutes les spécialités de notre région", user: annelaure, average_rate: 4.2, longitude: 43.602457517290965, latitude: 1.4445637267551485)
file = URI.open('https://leparadisgourmet.fr/img/paradis-gourmet-toulouse.jpg')
paradis.photo.attach(io: file, filename: 'paradis.png', content_type: 'image/png')
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Mardi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Mercredi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Jeudi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Vendredi", shop: paradis)
SlotHour.create(opening_hour: 10, closing_hour: 19, day_of_the_week: "Samedi", shop: paradis)

#----------------BOUCHERIE----------------#

mamie = Shop.create(id: 9, name: "Chez Mamie", address: "10 Place de la Trinité, 31000 Toulouse", mobile: "0531225030", email: "", category: 2, description: "Nous vous proposons des produits de qualité, sélectionnés dans la pure tradition bouchère.", user: julia, average_rate: 4.3, longitude: 43.59979350071048, latitude: 1.4449600818443762)
file = URI.open('https://www.boudulemag.com/wp-content/uploads/2021/11/Boudu-magazine-62-f-boucherie-des-copains-minimes-00.jpg')
mamie.photo.attach(io: file, filename: 'mamie.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: mamie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: mamie)

coterie = Shop.create(id: 22, name: "La Coterie Française", address: "19 Place de la Bourse, 31000 Toulouse", mobile: "0768335546", email: "", category: 2, description: "Viande saine, de qualité, et durable.", user: annelaure, average_rate: 4.0, longitude: 43.60161481556959, latitude: 1.44215321534164)
file = URI.open('https://www.meetpro.fr/wp-content/uploads/2018/11/AdobeStock_145257590-e1565683596225.jpeg')
coterie.photo.attach(io: file, filename: 'coterie.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: coterie)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: coterie)

boyer = Shop.create(id: 23, name: "Boucherie Maison Boyer", address: "62 Rue de Metz, 31000 Toulouse", mobile: "0561220039", email: "", category: 2, description: "La Maison Boyer à le plaisir de vous choisir des produits d'excellente qualité en boucherie, charcuterie et traiteur.", user: annelaure, average_rate: 4.9, longitude: 43.60097246553297, latitude: 1.450797246024921)
file = URI.open('https://www.sobio.fr/wp-content/uploads/2020/07/CV_20140626_3639.jpg')
boyer.photo.attach(io: file, filename: 'boyer.png', content_type: 'image/png')
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Lundi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mardi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Mercredi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Jeudi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Vendredi", shop: boyer)
SlotHour.create(opening_hour: 11, closing_hour: 19, day_of_the_week: "Samedi", shop: boyer)

#----------------BOULANGERIE----------------#

fournil = Shop.create(id: 10, name: "Fournil de Pierre", address: "16 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561217484", email: "", category: 0, description: "Notre concept allie tradition et tendance tout en valorisant les produits et le savoir-faire du monde de la boulangerie.", user: annelaure, average_rate: 4.3, longitude: 43.60213073215985, latitude: 1.4484790052385068)
file = URI.open('https://www.toute-la-franchise.com/images/zoom/news-franchise-le-fournil-de-pierre-boulangerie-161215.jpg')
fournil.photo.attach(io: file, filename: 'fournil.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: fournil)
SlotHour.create(opening_hour: 7, closing_hour: 14, day_of_the_week: "Dimanche", shop: fournil)

lamiecaline = Shop.create(id: 11, name: "La Mie Câline", address: "9 Place Etienne Esquirol, 31000 Toulouse", mobile: "0561253948", email: "", category: 0, description: "La Mie Câline vous propose pains, viennoiseries, patisseries, sandwichs et salades, pour toutes vos envies.", user: julia, average_rate: 4.0, longitude: 43.600284130003836, latitude: 1.4448180358194644)
file = URI.open('https://rs-menus-api.roocdn.com/images/9302417a-0896-4ad4-8a32-466f82bfd612/image.jpeg')
lamiecaline.photo.attach(io: file, filename: 'lamiecaline.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: lamiecaline)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Dimanche", shop: lamiecaline)

panetiere = Shop.create(id: 15, name: "La Panetière", address: "2 Rue de Metz, 31000 Toulouse", mobile: "0561732990", email: "", category: 0, description: "Le goût du bien-manger. Des produits frais, sains et équilibrés", user: annelaure, average_rate: 3.7, longitude: 43.599880939608894, latitude: 1.441918695513136)
file = URI.open('https://www.lapanetiere.fr/images/panetiere-toulouse-lafourcade16.jpg?crc=46408542')
panetiere.photo.attach(io: file, filename: 'panetiere.png', content_type: 'image/png')
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Lundi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mardi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Mercredi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Jeudi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Vendredi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Samedi", shop: panetiere)
SlotHour.create(opening_hour: 7, closing_hour: 20, day_of_the_week: "Dimanche", shop: panetiere)

perlette = Shop.create(id: 16, name: "Perlette", address: "57 Rue des Filatiers, 31000 Toulouse", mobile: "0982366046", email: "", category: 0, description: "Perlette propose des patisseries sur place ou à emporter, mais aussi des menus salés.", user: julia, average_rate: 4.5, longitude: 43.599880939608894, latitude: 1.441918695513136)
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

Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 0, shop: stcyp, user: elliot, total_of_box: 2)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 0, shop: prosciutteria, user: elliot, total_of_box: 1)
Rental.create(rental_time_start: Time.now - 1.hours, rental_time_end: Time.now + 1.hours, status: 0, shop: biocoop, user: elliot, total_of_box: 1)

#Creation menus

puts '----- Creating menus -----'

#----------------LA MIE CALINE----------------#
Menu.create!(name: "Salade César", description: "La classique salade césar composée de poulet, oeuf, parmesan et huile d'olive.", price: 8, number_of_box: 1, shop: lamiecaline)
Menu.create(name: "Salade Poké", description: "Une salade inspirée du poke bowl.", price: 8, number_of_box: 1, shop: lamiecaline)
Menu.create(name: "Pizza aux fromages", description: "Pizza individuelle généreusement garnie de 4 fromages.", price: 4, number_of_box: 1, shop: lamiecaline)
Menu.create(name: "Pizza lardons champignons", description: "Pâte à pizza, coulis de tomate, lardons, champignons, emmental, mozzarella.", price: 4, number_of_box: 1, shop: lamiecaline)
Menu.create(name: "Quiche poireaux saumon", description: "Une pâte feuilletée garnie d'un appareil onctueux composé d'oeufs, de crème et de mozzarella...", price: 4, number_of_box: 1, shop: lamiecaline)
Menu.create(name: "Quiche lorraine", description: "Une pâte feuilletée garnie d'un appareil onctueux composé d'oeufs, de crème et de mozzarella...", price: 4, number_of_box: 1, shop: lamiecaline)

#----------------FOURNIL DE PIERRE----------------#
item1 = Menu.create(name: "La salade tomate mozza", description: "Tomate, mozzarella, pesto, pâtes serpentini, roquette.", price: 7, number_of_box: 1, shop: fournil)
item2 = Menu.create(name: "La salade César", description: "Poulet rôti mariné citron-romarin, oeuf poché, bacon, chiffonnade Cantal AOP, tomates cerises, croûtons, batavia, ciboulette.", price: 7, number_of_box: 1, shop: fournil)
item3 = Menu.create(name: "Quiche chèvre épinard", description: "Pâte brisée, chèvre, épinard, fromage frais, crème fraîche, oeuf.", price: 5, number_of_box: 1, shop: fournil)
item4 = Menu.create(name: "Quiche lorraine", description: "Pâte brisée, jambon*, lardons*, emmental, crème fraîche, oeuf.", price: 5, number_of_box: 1, shop: fournil)

#----------------PANETIERE----------------#
Menu.create!(name: "Poké bowl saumon", description: "Riz, mangue, jeune pousse d'épinard, tomate cerise, saumon fumé, pavot, vinaigrette au soja et gingembre.", price: 9, number_of_box: 1, shop: panetiere)
Menu.create(name: "Taboulé libanais", description: "Taboulais libanais, feuille de batavia, boulette falafel, tomate cerise.", price: 7, number_of_box: 1, shop: panetiere)
Menu.create(name: "Pizza royale", description: "Sauce tomate, fromage râpé, champignon, jambon blanc, olive noire, herbes de Provence.", price: 3, number_of_box: 1, shop: panetiere)
Menu.create(name: "Pizza Margarita", description: "Sauce tomate, fromage râpé, olive noire, herbes de Provence.", price: 3, number_of_box: 1, shop: panetiere)
Menu.create(name: "Croque boulanger poulet", description: "Pain multi-graînes, poulet, bechamel, fromage, sel, poivre.", price: 5, number_of_box: 1, shop: panetiere)
Menu.create(name: "Croque boulanger jambon", description: "Pain multi-graînes, jambon, bechamel, fromage, sel, poivre.", price: 5, number_of_box: 1, shop: panetiere)

#----------------PERLETTE----------------#
Menu.create(name: "Bagel cream cheese & saumon", description: "Pain pavot, cream cheese, saumon fumé, aneth.", price: 3, number_of_box: 1, shop: perlette)
Menu.create(name: "Bagel poulet curry", description: "Pain pavot, poulet, curry, moutarde, roquette.", price: 3, number_of_box: 1, shop: perlette)
Menu.create!(name: "Miss Perlette", description: "Crème légère mascarpone vanillée, framboises fraîches, meringues craquantes et fondantes.", price: 4, number_of_box: 1, shop: perlette)
Menu.create(name: "Le Banoffee", description: "Tartelette spéculoos, caramel, bananes, crème montée.", price: 4, number_of_box: 1, shop: perlette)
