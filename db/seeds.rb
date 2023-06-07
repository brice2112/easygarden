# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
# require "json"
User.destroy_all
Vegetable.destroy_all


Vegetable.create!(
  name: "Tomate",
  variety: "Tomate",
  min_temp: 16,
  max_temp: 35,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.7,
  description: "Les tomates sont le légume le plus populaire à cultiver dans le jardin potager, et il n'y a rien de tel que des tranches de tomates sur un sandwich lorsqu'elles sont fraîchement cueillies du jardin. Voici quelques conseils sur la façon de cultiver des tomates qui vous permettront de récolter les tomates les plus savoureuses.",
  planting_season: "ete",
  synergy: "Carotte, persil, choux, poireau, épinard, salade, oigno, basilic",
)

Vegetable.create!(
  name: "Carrote",
  variety: "",
  min_temp: 7,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: "",
  maximum_precipitation: '',
  footprint: 0.05,
  description: "Les carottes sont un légume-racine populaire qui est facile à cultiver dans un sol sablonneux. Elles résistent à la plupart des ravageurs et des maladies et constituent une bonne culture de fin de saison qui peut tolérer le gel. Apprenez à faire pousser des carottes à partir de graines dans votre jardin avec ces suivre les conseils.",
  planting_season: "ete",
  synergy: "Ail, haricots, petit pois, poireau, oignon, tomate, laitue",
)

Vegetable.create!(
  name: "Pomme de terre",
  variety: "Solanaceae",
  min_temp: 10,
  max_temp: 20,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.35,
  description: "La pomme de terre ou patate est un tubercule comestible produit par l’espèce Solanum tuberosum, appartenant à la famille des solanacées. Le terme désigne également la plante elle-même, plante herbacée, vivace par ses tubercules mais toujours cultivée comme une culture annuelle",
  planting_season: "ete",
  synergy: "Ail, haricots, pois",
)

Vegetable.create!(
  name: "ognion",
  variety: "Amaryllidaceae ou Liliacées",
  min_temp: 10,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1,
  description: "L'Oignon est une plante vivace glabre, de 60 cm à 1 m de haut. La tige est dressée, épaisse mais creuse, renflée dans sa partie inférieure où elle porte les feuilles. Ces dernières sont cylindriques et creuses, engainantes vers le bas et en pointe vers le haut. Le bulbe est gros, rond, parfois un peu aplati.",
  planting_season: "ete",
  synergy: "aneth, ail, concombre, salade, carotte, tomates",
)

Vegetable.create!(
  name: "chou",
  variety: "brassicacées",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.4,
  description: "Le chou est un légume de la famille botanique des brassicacées ou crucifères. C'est une plante dont les fleurs à 4 pétales sont disposées en croix, d'où le nom. Dans cette famille, on retrouve : les navets, les rutabagas ou les radis.",
  planting_season: "ete",
  synergy: "	fève, betterave, céleri, camomille, aneth, hysope, menthe, capucine, oignon, origan, pomme de terre, sauge, romarin"
)

Vegetable.create!(
  name: "brocoli",
  variety: "Brassicaceae",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.4,
  description: "Le brocoli est un légume crucifère biennal qui appartient à la famille des Brassicaceae. Les autres membres célèbres de cette famille sont le chou-fleur, le chou de Bruxelles et le chou. Le nom scientifique du brocoli est Brassica oleracea var. italica, tandis que le nom brocoli, dérive de l'italien « broccolo ».",
  planting_season: "ete",
  synergy:  "betterave, céleri, camomille, aneth, hysope, menthe, capucine, oignon, origan, pomme de terre, sauge, romarin"
)


Vegetable.create!(
  name: "chou-fleur",
  variety: "",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.4,
  description: "Le chou-fleur est une plante herbacée bisannuelle de la famille des Brassicacées, cultivée comme plante potagère pour son méristème floral hypertrophié et charnu, consommé comme légume. C'est une variété de chou, tout comme le brocoli, le chou de Bruxelles, le chou pommé ou le chou-rave.",
  planting_season: "ete",
  synergy: "betterave, céleri, camomille, aneth, hysope, menthe, capucine, oignon, origan, pomme de terre, sauge, romarin"
)

Vegetable.create!(
  name: "epinard",
  variety: "Chenopodiaceae",
  min_temp: 7,
  max_temp: 22,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1,
  description: "L'épinard est une plante annuelle. Elle pousse au départ en rosette (comme les feuilles de laitue ou de pissenlit par exemple), et compte une base de 15 à 20 feuilles. Pendant sa croissance, une tige se forme. Elle peut atteindre 70 cm de haut.",
  planting_season: "toute l'année",
  synergy: "Chou, laitue, poireau, radis",
)

Vegetable.create!(
  name: "laitue",
  variety: "Asteraceae",
  min_temp: 5,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.15,
  description: "La Laitue cultivée est une plante annuelle, glabre et lisse, de 60 cm à 1, 20 m de haut. La tige, rameuse et dressée, contient un latex blanc (caractéristique du genre) et porte de nombreuses feuilles glabres.",
  planting_season:"tout l'année",
  synergy: "	Ail, betterave, brocoli, carotte, céleri, céleri-rave, chou, concombre,",
)

Vegetable.create!(
  name: "petit pois",
  variety: "Fabaceae",
  min_temp: 5,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.05,
  description: "Le petit pois, aussi appelé pois potager, est l’un des plus vieux légumes cultivés en Europe et en Asie. En Iran, en Palestine, en Grèce ou encore en Suisse, le petit pois était déjà présent il y a 10 000 ans.",
  planting_season:"été",
  synergy: "Aubergine, carotte, concombre, citrouille, épinard, haricot, maïs, navet, piment, pomme de terre, radis",
)

Vegetable.create!(
  name: "haricot vert",
  variety: "Fabacées",
  min_temp: 16,
  max_temp: 34,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1,
  description:"Plante herbacée de la famille des Fabacées ou des légumineuses, le haricot vert est une variété de l'espèce Phaseolus Vulgaris. Il est cultivé pour ses gousses, dont la couleur varie selon les variétés, en passant par du vert pâle, du jaune au vert- foncé.",
  planting_season:"été",
  synergy: "	Carotte, maïs, pois, radis",
)

Vegetable.create!(
  name: "poivron",
  variety: "Capsicum annuum",
  min_temp: 18,
  max_temp: 26,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.3,
  description:"Les poivrons sont des variétés de piments doux de l'espèce Capsicum annuum à très gros fruits. Le terme désigne à la fois le fruit et la plante. C'est une plante vivace cultivée comme une annuelle de la famille des Solanacées originaire du Mexique, d'Amérique centrale et d'Amérique du Sud. ",
  planting_season:"été",
  synergy:"Aubergine, carotte, oignon, pois, tomate",
)

Vegetable.create!(
  name: "courgette",
  variety: "Cucurbitaceae",
  min_temp: 21,
  max_temp: 40,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.9,
  description: "La courgette est un fruit de forme allongée ou ronde, et de couleur verte ou jaune. Bien qu'il s'agisse d'un fruit au sens botanique du terme parce qu'elle contient les graines de la plante, elle est communément utilisée comme un légume. La courgette se récolte immature quand elle a atteint environ 20 cm de long.",
  planting_season: "été",
  synergy: "Radis, salades, carottes, pois, fèves, haricots",
)

=begin Vegetable.create!(
  name: "aubergine",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 1,
  description:
  planting_season:
  synergy:
)

Vegetable.create!(
  name: "radis",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  description:
  planting_season:
  synergy:
)

Vegetable.create!(
  name: "celeri",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  description:
  planting_season:
  synergy:
)

Vegetable.create!(
  name: "citrouille",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  description:
  planting_season:
  synergy:
)

Vegetable.create!(
  name: "patate douce",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  description:
  planting_season:
  synergy:
)

Vegetable.create!(
  name: "betterave rouge",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  description:
  planting_season:
  synergy:
)

Vegetable.create!(
  name: "asperge",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  description:
  planting_season:
  synergy:
)

Vegetable.create!(
  name: "panais",
  variety: "",
  min_temp: ,
  max_temp: ,
  atmospheric_humidity: ,
  minimum_precipitation: '',
  maximum_precipitation: '',
  description:
  planting_season:
  synergy:
) =end

# Vegetable.create!(
#   name: "concombre",
#   variety: "",
#   min_temp: ,
#   max_temp: ,
#   atmospheric_humidity: ,
#   minimum_precipitation: '',
#   maximum_precipitation: '',
#   description:
#   planting_season:
#   synergy:
# )
# vegetable.save!

# Vegetable.create!(
#   name: "navet",
#   variety: "",
#   min_temp: ,
#   max_temp: ,
#   atmospheric_humidity: ,
#   minimum_precipitation: '',
#   maximum_precipitation = '',
#   description =
#   planting_season =
#   synergy =
# )
# vegetable.save!

# vegetable = Vegetable.create!(
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
