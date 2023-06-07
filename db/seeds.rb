# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

######### USERS #########

User.destroy_all

puts "Creating users..."

User.create!(
  email: "jean-francois.couillard@gmail.com",
  password: "jcouille++",
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



#######VEGETABLES################

Vegetable.destroy_all

vegetable = Vegetable.new(
  name = "Tomato",
  variety = "Tomato",
  min_temp = 15°,
  max_temp = 35°,
  atmospheric_humidity = 50,
  minimum_precipitation = '',
  maximum_precipitation = '',
)
vegetable.save!

########GARDENS###############

Garden.destroy_all

garden = Garden.new(
  name = "BeautifulGarden",
  location = "14 rue de l'abbé Jean Glatz Bois-Colombes",
  length = 6,
  width = 3,
  user = User.find_by(email: "jmtrick@gmail.com")
)

garden = Garden.new(
  name = "Nice&Green",
  location = "33 Chemin du Martoret Grezieu-la-Varenne",
  length = 8,
  width = 5,
  user = User.find_by(email: "jmtrick@gmail.com")
)

garden = Garden.new(
  name = "Breathing Chlorophyle",
  location = "5 Rue des Feuillants Limoges",
  length = 5,
  width = 2,
  user = User.find_by(email: "jmtrick@gmail.com")
)

##########COMPARTEMENTS###########

Compartement.destroy_all

compartement = Compartement.new(
  width = 1,
  garden = Garden.find_by(location: "14 rue de l'abbé Jean Glatz Bois-Colombes"),
)

compartement = Compartement.new(
  width = 1,
  garden = Garden.find_by(location: "14 rue de l'abbé Jean Glatz Bois-Colombes"),
)

compartement = Compartement.new(
  width = 1,
  garden = Garden.find_by(location: "14 rue de l'abbé Jean Glatz Bois-Colombes"),
)

###########IMPLANTATION############

Implantation.destroy_all

implantation = Implantation.new(
  quantity = 6,
  compartement = Compartement.last,
  vegetable = Vegetable.find_by(name: "Tomato")
)

implantation = Implantation.new(
  quantity = 4,
  compartement = Compartement.last,
  vegetable = Vegetable.find_by(name: "")
)

implantation = Implantation.new(
  quantity = 8,
  compartement = Compartement.last,
  vegetable = Vegetable.find_by()
)
