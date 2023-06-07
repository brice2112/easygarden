# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
require 'json"

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

#################VEGETABLES#####################

# Vegetable.destroy_all


vegetable = Vegetable.new(
  name = "Tomate",
  variety = "Tomate",
  min_temp = 16,
  max_temp = 35,
  atmospheric_humidity = 50,
  minimum_precipitation = '',
  maximum_precipitation = '',
  footprint = 0.5,
  description = "Les tomates sont le légume le plus populaire à cultiver dans le jardin potager, et il n'y a rien de tel que des tranches de tomates sur un sandwich lorsqu'elles sont fraîchement cueillies du jardin. Voici quelques conseils sur la façon de cultiver des tomates qui vous permettront de récolter les tomates les plus savoureuses.",
  planting_season = "ete",
  synergy = "Carotte, persil, choux, poireau, épinard, salade, oigno, basilic",
)
vegetable.save!

vegetable = Vegetable.new(
  name = "Carrote",
  variety = "",
  min_temp = 7,
  max_temp = 30,
  atmospheric_humidity = 50,
  minimum_precipitation = "",
  maximum_precipitation = '',
  footprint = 0.5,
  description = "Les carottes sont un légume-racine populaire qui est facile à cultiver dans un sol sablonneux. Elles résistent à la plupart des ravageurs et des maladies et constituent une bonne culture de fin de saison qui peut tolérer le gel. Apprenez à faire pousser des carottes à partir de graines dans votre jardin avec ces suivre les conseils.",
  planting_season = "ete",
  synergy = "Ail, haricots, petit pois, poireau, oignon, tomate, laitue",
)
vegetable.save!

vegetable = Vegetable.new(
  name = "Pomme de terre",
  variety = "Solanaceae",
  min_temp = 10,
  max_temp = 20,
  atmospheric_humidity = 50,
  minimum_precipitation = '',
  maximum_precipitation = '',
  footprint = 0.5,
  description = "La pomme de terre ou patate est un tubercule comestible produit par l’espèce Solanum tuberosum, appartenant à la famille des solanacées. Le terme désigne également la plante elle-même, plante herbacée, vivace par ses tubercules mais toujours cultivée comme une culture annuelle",
  planting_season = "ete",
  synergy = "Ail, haricots, pois"
)
vegetable.save!

vegetable = Vegetable.new(
  name = "ognion",
  variety = "Amaryllidaceae ou Liliacées",
  min_temp = 10,
  max_temp = 30,
  atmospheric_humidity = 50,
  minimum_precipitation = '',
  maximum_precipitation = '',
  footprint = 0.5,
  description = "L'Oignon est une plante vivace glabre, de 60 cm à 1 m de haut. La tige est dressée, épaisse mais creuse, renflée dans sa partie inférieure où elle porte les feuilles. Ces dernières sont cylindriques et creuses, engainantes vers le bas et en pointe vers le haut. Le bulbe est gros, rond, parfois un peu aplati.",
  planting_season = "ete",
  synergy = "aneth, ail, concombre, salade, carotte, tomates",
)
vegetable.save!

vegetable = Vegetable.new(
  name = "chou",
  variety = "brassicacées",
  min_temp = 7,
  max_temp = 32,
  atmospheric_humidity = 50,
  minimum_precipitation = '',
  maximum_precipitation = '',
  footprint = 0.5,
  description = "Le chou est un légume de la famille botanique des brassicacées ou crucifères. C'est une plante dont les fleurs à 4 pétales sont disposées en croix, d'où le nom. Dans cette famille, on retrouve : les navets, les rutabagas ou les radis.",
  planting_season = "ete",
  synergy = "	fève, betterave, céleri, camomille, aneth, hysope, menthe, capucine, oignon, origan, pomme de terre, sauge, romarin"
)
vegetable.save!

vegetable = Vegetable.new(
  name = "brocoli",
  variety = "Brassicaceae",
  min_temp = 7,
  max_temp = 32,
  atmospheric_humidity = 50,
  minimum_precipitation = '',
  maximum_precipitation = '',
  footprint = 0.5,
  description = "Le brocoli est un légume crucifère biennal qui appartient à la famille des Brassicaceae. Les autres membres célèbres de cette famille sont le chou-fleur, le chou de Bruxelles et le chou. Le nom scientifique du brocoli est Brassica oleracea var. italica, tandis que le nom brocoli, dérive de l'italien « broccolo ».",
  planting_season = "ete",
  synergy =  "betterave, céleri, camomille, aneth, hysope, menthe, capucine, oignon, origan, pomme de terre, sauge, romarin"
)

vegetable.save!

vegetable = Vegetable.new(
  name = "chou-fleur",
  variety = "",
  min_temp = 7,
  max_temp = 32,
  atmospheric_humidity = 50,
  minimum_precipitation = '',
  maximum_precipitation = '',
  footprint = 0.5,
  description = "Le chou-fleur est une plante herbacée bisannuelle de la famille des Brassicacées, cultivée comme plante potagère pour son méristème floral hypertrophié et charnu, consommé comme légume. C'est une variété de chou, tout comme le brocoli, le chou de Bruxelles, le chou pommé ou le chou-rave.",
  planting_season = "ete",
  synergy ="betterave, céleri, camomille, aneth, hysope, menthe, capucine, oignon, origan, pomme de terre, sauge, romarin"
)
vegetable.save!

# vegetable = Vegetable.new(
#   name = "epinard",
#   variety = "",
#   min_temp = "",
#   max_temp = "",
#   atmospheric_humidity = "",
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   footprint = 0.5,
#   description ="",
#   planting_season ="",
#   synergy ="",
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "laitue",
#   variety = "",
#   min_temp = "",
#   max_temp = "",
#   atmospheric_humidity = "",
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   footprint = 0.5,
#   description ="",
#   planting_season ="",
#   synergy ="",
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "petit pois",
#   variety = "",
#   min_temp = "",
#   max_temp = "",
#   atmospheric_humidity = "",
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   footprint = 0.5,
#   description ="",
#   planting_season ="",
#   synergy ="",
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "haricot vert",
#   variety = "",
#   min_temp = "",
#   max_temp = "",
#   atmospheric_humidity = "",
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   footprint = 0.5,
#   description ="",
#   planting_season ="",
#   synergy ="",
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "poivron",
#   variety = "",
#   min_temp = "",
#   max_temp = "",
#   atmospheric_humidity = "",
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   footprint = 0.5,
#   description ="",
#   planting_season ="",
#   synergy ="",
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "courgette",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   footprint = 0.5,
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "aubergine",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   footprint = 1,
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "radis",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "celeri",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "citrouille",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "patate douce",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "betterave rouge",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "asperge",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "panais",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "concombre",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "navet",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "batavia",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "basilic",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "persil plat",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "coriandre",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "concombre",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "ciboulette",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "thym",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "origan",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "roquette",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "maïs",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "menthe",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "melon",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!


# vegetable = Vegetable.new(
#   name = "fenouil",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "echalote",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "mache",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "poireau",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "topinambour",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "blette",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "endive",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "artichaut",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "cornichon",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!

# vegetable = Vegetable.new(
#   name = "",
#   variety = "",
#   min_temp = ,
#   max_temp = ,
#   atmospheric_humidity = ,
#   minimum_precipitation = '',
#   maximum_precipitation = '',
#   description =  ,
#   planting_season =  ,
#   synergy =  ,
# )
# vegetable.save!