# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db: seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require "cloudinary"
# require "json"
Implantation.destroy_all
Compartment.destroy_all
Synergy.destroy_all
Vegetable.destroy_all
Garden.destroy_all
User.destroy_all

puts "Destroy all OK --"
######### USERS #########

puts "Creating users..."

User.create!(
  email: "jean-francois.couillard@gmail.com",
  password: "jcouille++"
)

User.create!(
  email: "patrick-lecq@gmail.com",
  password: "lecq9999999",
)

User.create!(
  email: "lagribgdu56@gmail.com",
  password: "lardg1254g5",
)

User.create!(
  email: "momoguiguich@gmail.com",
  password: "mg123abc++",
)

User.create!(
  email: "jmtrick@gmail.com",
  password: "trikkkk666",
)

User.create!(
  email: "marcel-boursier@gmail.com",
  password: "mrbrxx123GG",
)

User.create!(
  email: "johnny-mcbrown@gmail.com",
  password: "americafirstbaby",
)

#################VEGETABLES#####################


puts "Creating Vegetables..."

vegetable = Vegetable.new(
  name: "Carotte",
  variety: "",
  min_temp: 7,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.01
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312702/carotte_jt7fhf.jpg')
vegetable.photo.attach(io: file, filename: "carotte_jt7fhf.jpg", content_type: "image/jpg")
vegetable.save

Vegetable.create!(
  name: "Pomme de terre",
  variety: "Solanaceae",
  min_temp: 10,
  max_temp: 20,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.35
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/pommedeterre_dyfyn1.jpg')
vegetable.photo.attach(io: file, filename: "pommedeterre_dyfyn1.jpg", content_type: "image/jpg")
vegetable.save

Vegetable.create!(
  name: "Chou",
  variety: "brassicacées",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.4
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312721/chou_fyahco.jpg')
vegetable.photo.attach(io: file, filename: "chou_fyahco.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Brocoli",
  variety: "Brassicaceae",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.4
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312695/broccoli_ao3ab2.jpg')
vegetable.photo.attach(io: file, filename: "broccoli_ao3ab2.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Chou-fleur",
  variety: "",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.4
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312733/choufleur_edvnxn.jpg')
vegetable.photo.attach(io: file, filename: "choufleur_edvnxn.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Epinard",
  variety: "Chenopodiaceae",
  min_temp: 7,
  max_temp: 22,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/epinard_wzqehp.jpg')
vegetable.photo.attach(io: file, filename: "epinard_wzqehp.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Laitue",
  variety: "Asteraceae",
  min_temp: 5,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.15
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/salade_bnvqck.jpg')
vegetable.photo.attach(io: file, filename: "salade_bnvqck.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Petit pois",
  variety: "Fabaceae",
  min_temp: 5,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.05
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/petitpois_tabgwn.jpg')
vegetable.photo.attach(io: file, filename: "petitpois_tabgwn.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Haricot vert",
  variety: "Fabacées",
  min_temp: 16,
  max_temp: 34,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/haricotvert_ufwzwk.jpg')
vegetable.photo.attach(io: file, filename: "haricotvert_ufwzwk.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Poivron",
  variety: "Capsicum annuum",
  min_temp: 18,
  max_temp: 26,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.3
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/poivron_wuq5mh.jpg')
vegetable.photo.attach(io: file, filename: "poivron_wuq5mh.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Courgette",
  variety: "Cucurbitaceae",
  min_temp: 21,
  max_temp: 40,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.9
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312733/courgette_ykebdh.jpg')
vegetable.photo.attach(io: file, filename: "courgette_ykebdh.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Maïs",
  variety: "Cucurbitaceae",
  min_temp: 12,
  max_temp: 28,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.12
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/mais_szodom.jpg')
vegetable.photo.attach(io: file, filename: "mais_szodom.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Tomate",
  variety: "Solanaceae",
  min_temp: 12,
  max_temp: 37,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.15
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/tomate_zhk0vq.jpg')
vegetable.photo.attach(io: file, filename: "tomate_zhk0vq.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Persil",
  variety: "Apiaceae",
  min_temp: 7,
  max_temp: 27,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.05
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/persil_qtmwuc.jpg')
vegetable.photo.attach(io: file, filename: "persil_qtmwuc.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Basilic",
  variety: "Lamiaceae",
  min_temp: 11,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.03
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312323/basilic_a3bbol.jpg')
vegetable.photo.attach(io: file, filename: "basilic_a3bbol.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Oignon",
  variety: "Liliaceae",
  min_temp: 8,
  max_temp: 25,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.005
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/oignon_wptmlv.jpg')
vegetable.photo.attach(io: file, filename: "oignon_wptmlv.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Poireau",
  variety: "Liliaceae",
  min_temp: 3,
  max_temp: 25,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.005
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/poireau_grohxo.jpg')
vegetable.photo.attach(io: file, filename: "poireau_grohxo.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Citron",
  variety: "",
  min_temp: 18,
  max_temp: 42,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 1.8
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565635/citron_waicvp.jpg')
vegetable.photo.attach(io: file, filename: "citron_waicvp.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Avocat",
  variety: "",
  min_temp: 23,
  max_temp: 42,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 1.2
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565664/avocat_uakglm.jpg')
vegetable.photo.attach(io: file, filename: "avocat_uakglm.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Banane",
  variety: "",
  min_temp: 25,
  max_temp: 45,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 2.5
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565710/banane_xeb1ao.jpg')
vegetable.photo.attach(io: file, filename: "banane_xeb1ao.jpg", content_type: "image/png")
vegetable.save

Vegetable.create!(
  name: "Mangue",
  variety: "",
  min_temp: 29,
  max_temp: 46,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 2.1
)

file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565644/mangue_xhrbtq.jpg')
vegetable.photo.attach(io: file, filename: "mangue_xhrbtq.jpg", content_type: "image/png")
vegetable.save

########SYNERGIES#############

puts "Creating Synergies..."

# haricot/courgette/mais
Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Haricot vert"),
  second_vegetable: Vegetable.find_by(name: "Courgette")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Maïs"),
  second_vegetable: Vegetable.find_by(name: "Haricot vert")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Maïs"),
  second_vegetable: Vegetable.find_by(name: "Courgette")
)

# carotte/poireau/oignon
Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Carotte"),
  second_vegetable: Vegetable.find_by(name: "Poireau")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Carotte"),
  second_vegetable: Vegetable.find_by(name: "Oignon")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Poireau"),
  second_vegetable: Vegetable.find_by(name: "Oignon")
)

#tomate/basilic/persil
Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Tomate"),
  second_vegetable: Vegetable.find_by(name: "Basilic")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Tomate"),
  second_vegetable: Vegetable.find_by(name: "Persil")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Basilic"),
  second_vegetable: Vegetable.find_by(name: "Persil")
)

#fake-tropical
Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Citron"),
  second_vegetable: Vegetable.find_by(name: "Avocat")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Citron"),
  second_vegetable: Vegetable.find_by(name: "Banane")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Avocat"),
  second_vegetable: Vegetable.find_by(name: "Banane")
)

#fake-brassicasseae
Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Chou"),
  second_vegetable: Vegetable.find_by(name: "Chou-fleur")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Chou"),
  second_vegetable: Vegetable.find_by(name: "Brocoli")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Chou-fleur"),
  second_vegetable: Vegetable.find_by(name: "Brocoli")
)


########GARDENS###############



puts "Creating Gardens..."

Garden.create!(
  name: "BeautifulGarden",
  location: "14 rue de l'abbé Jean Glatz Bois-Colombes",
  length: 6,
  width: 3,
  user: User.find_by(email: "jmtrick@gmail.com")
)

Garden.create(
  name: "Nice&Green",
  location: "33 Chemin du Martoret Grezieu-la-Varenne",
  length: 8,
  width: 5,
  user: User.find_by(email: "jmtrick@gmail.com")
)

Garden.create(
  name: "Breathing Chlorophyle",
  location: "5 Rue des Feuillants Limoges",
  length: 5,
  width: 2,
  user: User.find_by(email: "jmtrick@gmail.com")
)

##########COMPARTEMENTS###########

puts "Creating Compartments..."

Compartment.create(
  width: 1,
  garden: Garden.find_by(location: "14 rue de l'abbé Jean Glatz Bois-Colombes"),
)

Compartment.create(
  width: 1,
  garden: Garden.find_by(location: "14 rue de l'abbé Jean Glatz Bois-Colombes"),
)

Compartment.create(
  width: 1,
  garden: Garden.find_by(location: "14 rue de l'abbé Jean Glatz Bois-Colombes"),
)

###########IMPLANTATION############


puts "Creating Implantations..."

Implantation.create!(
  quantity: 6,
  compartment: Compartment.last,
  vegetable: Vegetable.find_by(name: "Carotte")
)

Implantation.create(
  quantity: 4,
  compartment: Compartment.last,
  vegetable: Vegetable.find_by(name: "Courgette")
)

Implantation.create(
  quantity: 8,
  compartment: Compartment.last,
  vegetable: Vegetable.find_by(name: "Poivron")
)
