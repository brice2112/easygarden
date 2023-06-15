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
  variety: "Apiacées",
  min_temp: 7,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.0116,
  semidate: "Fevrier à Mars",
  recoltedate: "Avril à Juin",
  espaceplant: 0.1,
  prix_unitaire: 0.02,
  semitype: "graine",
  description: "La carotte est une racine comestible de couleur orange vif et au goût sucré. Elle est largement connue pour sa richesse en caroténoïdes, notamment le bêta-carotène, qui se transforme en vitamine A dans notre corps. La carotte est également une source de fibres alimentaires, de vitamines et de minéraux essentiels tels que la vitamine K, le potassium et le phosphore. Ce légume croquant et juteux peut être consommé cru, en salade, ou cuit de différentes manières, comme dans les ragoûts, les sautés, les soupes et les purées. La carotte est souvent appréciée pour ses bienfaits pour la santé des yeux, la santé de la peau et son rôle dans le renforcement du système immunitaire."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312702/carotte_jt7fhf.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Cannabis",
  variety: "indica/sativa",
  min_temp: 20,
  max_temp: 45,
  atmospheric_humidity: 60,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.3,
  semidate: "Mars",
  recoltedate: "Octobre",
  espaceplant: 0.3,
  prix_unitaire: 10,
  semitype: "graine",
  description: "Le cannabis est une plante à fleurs qui produit des bourgeons riches en cannabinoïdes, notamment le THC et le CBD. Le cannabis est consommé à des fins récréatives et médicinales. Il est souvent fumé, vaporisé ou consommé sous forme d'huile. Le cannabis est connu pour ses effets psychoactifs et ses propriétés médicinales. Il est utilisé pour traiter les symptômes de nombreuses maladies, notamment la douleur, l'anxiété, la dépression, les nausées et les vomissements, les convulsions, les troubles du sommeil et bien d'autres encore.Smoke WEED everyday🤪"
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686831134/weed_sctkyy.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save


vegetable = Vegetable.new(
  name: "Pomme de terre",
  variety: "Solanacées",
  min_temp: 10,
  max_temp: 20,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.361,
  semidate: "Fevrier à Mai",
  recoltedate: "Mai à Septembre",
  espaceplant: 0.3,
  prix_unitaire: 0.02,
  semitype: "plant/germe",
  description:"La pomme de terre est un légume-racine polyvalent et largement consommé dans le monde entier. Elle est connue pour sa texture féculente et son goût délicieux. Les pommes de terre sont une excellente source d'énergie grâce à leur teneur élevée en glucides complexes. Elles contiennent également des vitamines et des minéraux essentiels tels que la vitamine C, le potassium et le fer. Les pommes de terre peuvent être préparées de nombreuses façons différentes, comme bouillies, rôties, en purée, en frites ou même en gratin. Elles sont un ingrédient de base dans de nombreux plats populaires tels que les plats de pâtes, les ragoûts, les potages et bien d'autres."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/pommedeterre_dyfyn1.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Chou",
  variety: "Brassicacées",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.413,
  semidate: "Avril à Novembre",
  recoltedate: "Juin à Janvier",
  espaceplant: 0.6,
  prix_unitaire: 0.04,
  semitype: "graine",
  description:"Le chou est un légume à feuilles denses appartenant à la famille des crucifères. Il existe différentes variétés de chou, notamment le chou vert, le chou frisé, le chou rouge et le chou de Savoie. Le chou est réputé pour sa texture croquante et sa saveur légèrement amère. Il est riche en vitamines C, K et en fibres alimentaires, ce qui en fait un aliment sain et nutritif. Le chou est polyvalent et peut être utilisé dans une variété de plats, tels que les salades, les sautés, les soupes, les ragoûts et les plats d'accompagnement. Il est également utilisé pour faire du chou fermenté, comme la choucroute. Le chou est apprécié pour sa capacité à ajouter de la texture, de la saveur et de la valeur nutritive aux repas."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312721/chou_fyahco.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Brocoli",
  variety: "Crucifères",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.4874,
  semidate: "Fevrier à Septembre",
  recoltedate: "Janvier à Octobre",
  espaceplant: 0.6,
  prix_unitaire: 0.007,
  semitype: "graine",
  description:"Le brocoli est un légume vert à fleurs de la famille des crucifères. Il est réputé pour sa forme de petit arbre et est largement apprécié pour sa saveur délicieuse et ses nombreux bienfaits pour la santé. Le brocoli est une excellente source de vitamines, de minéraux et d'antioxydants. Il est également riche en fibres alimentaires et pauvre en calories, ce qui en fait un choix idéal pour une alimentation saine. Le brocoli peut être consommé cru, cuit à la vapeur, sauté ou ajouté à une variété de plats tels que les salades, les soupes, les sautés et les plats d'accompagnement."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312695/broccoli_ao3ab2.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Chou-fleur",
  variety: "Crucifères",
  min_temp: 7,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.3751,
  semidate: "Avril à Novembre",
  recoltedate: "Juin à Janvier",
  espaceplant: 0.6,
  prix_unitaire: 0.01,
  semitype: "graine",
  description: "Le chou est un légume à feuilles denses et croquantes qui appartient à la famille des crucifères. Il existe différentes variétés de chou, comme le chou vert, le chou rouge et le chou frisé. Le chou est connu pour sa saveur distinctive, légèrement amère, ainsi que pour sa texture ferme. C'est un légume nutritif, riche en vitamines C, K et en fibres alimentaires. Le chou peut être consommé cru, dans des salades, ou cuit dans divers plats tels que les sautés, les soupes, les ragoûts et les plats d'accompagnement. Il est également utilisé pour la préparation de choucroute et d'autres plats fermentés. Le chou est apprécié pour sa polyvalence culinaire et ses bienfaits pour la santé."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312733/choufleur_edvnxn.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Epinard",
  variety: "Amaranthacées",
  min_temp: 7,
  max_temp: 22,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1425,
  semidate: "Mars à Avril et Aout à Septembre",
  recoltedate: "Mars à Novembre",
  espaceplant: 0.1,
  prix_unitaire: 0.01,
  semitype: "graine",
  description:"Les épinards sont de délicieuses feuilles vertes qui appartiennent à la famille des Amaranthacées. Ils sont appréciés pour leur goût légèrement terreux et leur texture tendre. Les épinards sont une excellente source de nutriments, notamment de vitamines A, C et K, de fer, de calcium et de fibres alimentaires. Ils sont connus pour leurs nombreux bienfaits pour la santé, notamment leur capacité à renforcer le système immunitaire, à favoriser la santé des os et à améliorer la santé oculaire. Les épinards peuvent être consommés crus dans les salades ou cuits à la vapeur, sautés, ou ajoutés à une variété de plats tels que les soupes, les plats d'accompagnement, les omelettes et les smoothies. Ils sont un ajout nutritif et savoureux à une alimentation équilibrée."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/epinard_wzqehp.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Laitue",
  variety: "Asteracées",
  min_temp: 5,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1624,
  semidate: "Fevrier à Octobre",
  recoltedate: "Toute l'année",
  espaceplant: 0.25,
  prix_unitaire: 0.01,
  semitype: "graine",
  description: "La laitue est un légume à feuilles vertes largement consommé dans le monde entier. Elle se caractérise par sa texture croquante et son goût frais et légèrement amer. La laitue est souvent utilisée comme base pour les salades, offrant une grande variété de types et de variétés, tels que la laitue iceberg, la laitue romaine et la laitue frisée. La laitue est faible en calories et riche en eau, ce qui en fait un choix sain pour les personnes soucieuses de leur alimentation. Elle est également une bonne source de vitamines et de minéraux, tels que la vitamine K, la vitamine C et le folate. La laitue peut être dégustée seule ou accompagnée d'autres légumes, de protéines ou de vinaigrettes pour créer des salades savoureuses et rafraîchissantes."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/salade_bnvqck.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Petit pois",
  variety: "Fabacées",
  min_temp: 5,
  max_temp: 30,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.05421,
  semidate: "Fevrier à Juin",
  recoltedate: "Mai à Octobre",
  espaceplant: 0.2,
  prix_unitaire: 0.03,
  semitype: "graine",
  description: "Les petits pois, pois de jardins, ou pois potagers sont les jeunes graines vertes de variétés cultivées du pois, récoltées après leur développement dans les gousses et avant leur maturité. Lorsque ces graines sont récoltées à leur maturité, elles sont appelées pois cassés."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/petitpois_tabgwn.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Haricot vert",
  variety: "Fabacées",
  min_temp: 16,
  max_temp: 34,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1453,
  semidate: "Avril à Juin",
  recoltedate: "Mai à Juillet",
  espaceplant: 0.05,
  prix_unitaire: 0.04,
  semitype: "graine",
  description: "Les haricots verts sont de minces et longues gousses vertes qui sont un type de légume communément consommé. Ils ont une texture croquante et une saveur douce et délicate. Les haricots verts sont une excellente source de nutriments, tels que les vitamines A, C et K, ainsi que de fibres alimentaires. Ils sont également faibles en calories, ce qui en fait un choix sain pour les régimes alimentaires équilibrés. Les haricots verts peuvent être cuits à la vapeur, sautés, blanchis ou ajoutés à des plats tels que les salades, les ragoûts, les sautés ou les plats d'accompagnement. Ils sont souvent appréciés pour leur couleur vibrante, leur goût frais et leur capacité à ajouter de la texture et de la nutrition à une variété de repas."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/haricotvert_ufwzwk.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Poivron",
  variety: "Solanacées",
  min_temp: 18,
  max_temp: 26,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.3145,
  semidate: "Fevrier à Avril",
  recoltedate: "Avril à Octobre",
  espaceplant: 0.6,
  prix_unitaire: 0.7,
  semitype: "graine",
  description: "Le poivron est un légume coloré et croquant largement apprécié pour sa saveur douce et sa polyvalence culinaire. Il existe différentes variétés de poivrons, notamment les poivrons rouges, verts et jaunes. Ils sont riches en vitamines C, A et en antioxydants bénéfiques pour la santé. Les poivrons sont utilisés dans de nombreux plats, tels que les sautés, les salades, les sauces et les plats grillés. Leur texture croquante et leur goût sucré les rendent délicieux aussi bien crus que cuits. Les poivrons ajoutent de la couleur, de la saveur et des nutriments aux repas et peuvent être appréciés par les amateurs de légumes et les gourmets."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/poivron_wuq5mh.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Courgette",
  variety: "Cucurbitacées",
  min_temp: 21,
  max_temp: 40,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.892,
  semidate: "Avril à Juin",
  recoltedate: "Mai à Juillet",
  espaceplant: 1,
  prix_unitaire: 0.03,
  semitype: "graine",
  description: "La courgette est un légume d'été de forme allongée et de couleur vert clair. Elle est appréciée pour sa saveur douce et sa texture tendre. La courgette est une excellente source de vitamines, de minéraux et de fibres alimentaires. Elle est souvent utilisée dans une variété de plats, tels que les sautés, les ragoûts, les soupes, les gratins et les plats d'accompagnement. La courgette peut être consommée crue, râpée en salade ou cuite de différentes manières, telles que la cuisson à la vapeur, la cuisson au four ou la cuisson à la poêle. Polyvalente et nutritive, la courgette est un choix sain et délicieux pour ajouter de la variété à votre alimentation."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312733/courgette_ykebdh.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Maïs",
  variety: "Cucurbitacées",
  min_temp: 12,
  max_temp: 28,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1541,
  semidate: "Avril à Mai",
  recoltedate: "Aout à Octobre",
  espaceplant: 0.5,
  prix_unitaire: 0.1,
  semitype: "graine",
  description: "Le maïs est un légume populaire et polyvalent, largement consommé dans le monde entier. Il est caractérisé par ses grains jaunes ou blancs disposés en rangées sur une épaisse tige. Le maïs est apprécié pour sa saveur douce et sucrée. Il est une excellente source de fibres alimentaires, de vitamines et de minéraux tels que la vitamine C, le folate et le magnésium. Le maïs peut être consommé de différentes manières, que ce soit frais, en conserve, en épi, en grains ou transformé en farine pour la préparation de produits de boulangerie. Il est utilisé dans de nombreux plats, tels que les salades, les soupes, les tacos, les enchiladas et les plats d'accompagnement. Le maïs est apprécié pour sa polyvalence culinaire et sa capacité à ajouter de la douceur et de la texture à de nombreux plats."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/mais_szodom.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Tomate",
  variety: "Solanacées",
  min_temp: 12,
  max_temp: 37,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.1741,
  semidate: "Mai à Juin",
  recoltedate: "Juillet à Octobre",
  espaceplant: 0.5,
  prix_unitaire: 3.5,
  semitype: "Plant",
  description: "La tomate est un fruit-légume rouge vif et juteux, souvent considéré comme un légume dans la cuisine. Elle est caractérisée par sa texture lisse et sa saveur légèrement acidulée et sucrée. La tomate est une excellente source de vitamines C, A et K, ainsi que de minéraux tels que le potassium. Elle contient également des antioxydants bénéfiques pour la santé. Les tomates sont utilisées dans de nombreux plats, que ce soit crues dans les salades, les sandwichs et les salsas, ou cuites dans les sauces, les soupes, les plats mijotés et les pizzas. Elles apportent une saveur rafraîchissante et une couleur vive aux plats. La tomate est un aliment polyvalent et nutritif qui est apprécié pour sa fraîcheur et son goût délicieux."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/tomate_zhk0vq.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Persil",
  variety: "Apiacées",
  min_temp: 7,
  max_temp: 27,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.045,
  semidate: "Fevrier à Mars",
  recoltedate: "Juin à Octobre et plus si affinités ❤️",
  espaceplant: 0.15,
  prix_unitaire: 0.01,
  semitype: "graine",
  description: "Le persil est une herbe aromatique couramment utilisée en cuisine pour sa saveur fraîche et son parfum caractéristique. Il est souvent utilisé comme garniture ou ingrédient dans de nombreux plats et recettes. Le persil est riche en vitamines, notamment la vitamine C, et en minéraux tels que le fer et le potassium. Il est également connu pour ses propriétés antioxydantes et ses bienfaits pour la digestion. Le persil peut être utilisé frais ou séché, ajouté aux salades, aux soupes, aux sauces, aux plats de viande, de poisson ou de légumes pour apporter une saveur herbacée et une touche de fraîcheur. C'est une herbe polyvalente et largement appréciée dans de nombreuses cuisines à travers le monde."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/persil_qtmwuc.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Basilic",
  variety: "Lamiacées",
  min_temp: 11,
  max_temp: 32,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.023,
  semidate: "Avril à Juin",
  recoltedate: "Mais à Octobre",
  espaceplant: 0.3,
  prix_unitaire: 0.01,
  semitype: "graine",
  description: "Le basilic est une herbe aromatique populaire, largement utilisée dans la cuisine méditerranéenne et asiatique. Il est apprécié pour son arôme distinctif et son goût légèrement sucré avec des notes de clou de girofle et de poivre. Le basilic est une source de vitamines A, K et C, ainsi que de minéraux tels que le potassium et le calcium. Il est souvent utilisé frais dans les salades, les sauces, les pestos et les plats de pâtes. Le basilic est également un ingrédient clé dans la préparation du célèbre plat italien, la caprese. Son parfum et sa saveur ajoutent une touche de fraîcheur et d'intensité à de nombreux plats. Le basilic est une herbe polyvalente et appréciée pour ses qualités gustatives et aromatiques uniques."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312323/basilic_a3bbol.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Oignon",
  variety: "Liliacées",
  min_temp: 8,
  max_temp: 25,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.0127,
  semidate: "Fevrier à Avril et Aout à Septembre",
  recoltedate: "Avril à Novembre",
  espaceplant: 0.1,
  prix_unitaire: 0.02,
  semitype: "graine",
  description: "L'oignon est un légume à bulbe largement utilisé dans la cuisine du monde entier. Il est apprécié pour sa saveur piquante et son arôme distinctif. Les oignons sont disponibles dans différentes variétés, allant des oignons jaunes aux oignons rouges et aux oignons blancs. Ils sont une excellente source de vitamines C et B6, ainsi que de minéraux tels que le potassium et le manganèse. Les oignons sont utilisés dans de nombreux plats, qu'ils soient crus, cuits, sautés ou caramélisés. Ils ajoutent de la saveur et de la profondeur aux soupes, aux sauces, aux ragoûts, aux sautés et aux plats de viande ou de légumes. Les oignons sont polyvalents et offrent une base savoureuse pour de nombreuses recettes."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312752/oignon_wptmlv.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Poireau",
  variety: "Liliacées",
  min_temp: 3,
  max_temp: 25,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 0.0144,
  semidate: "Mai à Septembre",
  recoltedate: "Juillet à Decembre",
  espaceplant: 0.15,
  prix_unitaire: 2.5,
  semitype: "Plant",
  description: "Le poireau est un légume de la famille de l'oignon et de l'ail, caractérisé par son long bulbe blanc et ses feuilles vertes foncées. Il possède un goût délicat et légèrement sucré, rappelant l'oignon, mais avec une saveur plus subtile. Le poireau est une excellente source de fibres, de vitamines (notamment la vitamine C et la vitamine K) et de minéraux tels que le fer et le manganèse. Il est souvent utilisé dans les soupes, les ragoûts, les quiches et les plats mijotés pour ajouter de la saveur et de la texture. Le poireau peut être consommé cru, mais il est plus souvent cuit pour adoucir sa saveur et rendre sa texture plus tendre. C'est un légume polyvalent et nutritif qui ajoute une note aromatique et savoureuse à de nombreux plats."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686312753/poireau_grohxo.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Citron",
  variety: "Rutacées",
  min_temp: 18,
  max_temp: 42,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 1.456,
  semidate: "Mars à Juin",
  recoltedate: "Octobre à Fevrier",
  espaceplant: 4,
  prix_unitaire: 20,
  semitype: "Plant",
  description: "Le citron est un agrume jaune vif et acide, caractérisé par son goût frais et acidulé. Il est largement utilisé en cuisine et en boisson pour sa saveur distinctive. Le citron est une excellente source de vitamine C, d'antioxydants et de minéraux tels que le potassium. Son jus est souvent utilisé comme assaisonnement ou pour rehausser la saveur des plats, des salades, des boissons et des desserts. Le zeste de citron est également utilisé pour ajouter une touche d'arôme et de parfum. Le citron est apprécié pour sa capacité à apporter de la fraîcheur, de l'acidité et une note citrique aux préparations culinaires."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565635/citron_waicvp.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Avocat",
  variety: "Lauracées",
  min_temp: 23,
  max_temp: 42,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 1.621,
  semidate: "Mars à Juin",
  recoltedate: "Octobre à Fevrier",
  espaceplant: 4,
  prix_unitaire: 20,
  semitype: "Plant",
  description: "L'avocat est un fruit à la peau verte et à la chair crémeuse, largement apprécié pour sa texture lisse et son goût délicat. Il est riche en graisses saines, en fibres alimentaires et en vitamines, notamment la vitamine K, la vitamine C, la vitamine E et les vitamines du groupe B. L'avocat est souvent considéré comme un super aliment en raison de sa teneur en nutriments bénéfiques pour la santé. Il est utilisé dans de nombreuses préparations culinaires, telles que les salades, les guacamoles, les sandwichs, les sushis et les smoothies. L'avocat ajoute une texture crémeuse et un goût doux aux plats, tout en apportant des bienfaits nutritionnels. C'est un fruit polyvalent et nutritif apprécié dans le monde entier."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565664/avocat_uakglm.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Banane",
  variety: "Bananées",
  min_temp: 25,
  max_temp: 45,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 2.462,
  semidate: "Mars à Juin",
  recoltedate: "Octobre à Fevrier",
  espaceplant: 4,
  prix_unitaire: 20,
  semitype: "Plant",
  description: "La banane est un fruit en forme de courbe, généralement jaune à maturité, et doté d'une chair douce et crémeuse. Elle est connue pour sa saveur sucrée et sa texture agréable. La banane est une excellente source de nutriments, tels que les vitamines C et B6, le potassium, les fibres et les antioxydants. Elle est souvent consommée crue et peut être utilisée dans de nombreuses préparations culinaires, notamment les smoothies, les salades de fruits, les desserts et les pains. La banane est appréciée pour son goût naturellement sucré, sa facilité à être transportée et sa capacité à fournir une énergie rapide. C'est un fruit polyvalent et populaire dans le monde entier."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565710/banane_xeb1ao.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
vegetable.save

vegetable = Vegetable.new(
  name: "Mangue",
  variety: "Anacardiacées",
  min_temp: 29,
  max_temp: 46,
  atmospheric_humidity: 50,
  minimum_precipitation: '',
  maximum_precipitation: '',
  footprint: 2.178,
  semidate: "Mars à Juin",
  recoltedate: "Octobre à Fevrier",
  espaceplant: 4,
  prix_unitaire: 20,
  semitype: "Plant",
  description: "La mangue est un fruit tropical à la peau lisse et à la chair juteuse et sucrée. Elle est appréciée pour sa saveur exotique et son parfum sucré et floral. La mangue est riche en vitamines C et A, en fibres et en antioxydants. Elle est souvent consommée crue et peut également être utilisée dans une variété de plats sucrés et salés, tels que les salades, les smoothies, les sauces, les glaces et les desserts. La texture de la mangue est douce et fondante, ce qui en fait un fruit délicieux et rafraîchissant à déguster. La mangue est très appréciée dans les régions tropicales et elle est également exportée dans le monde entier."
)
file = URI.open('https://res.cloudinary.com/dasx2arbl/image/upload/v1686565644/mangue_xhrbtq.jpg')
vegetable.photo.attach(io: file, filename: "veg.jpg", content_type: "image/png")
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

#Carotte / Oignon / Persil
Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Carotte"),
  second_vegetable: Vegetable.find_by(name: "Oignon")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Carotte"),
  second_vegetable: Vegetable.find_by(name: "Persil")
)

Synergy.create!(
  first_vegetable: Vegetable.find_by(name: "Oignon"),
  second_vegetable: Vegetable.find_by(name: "Persil")
)

#Pomme de terre / Chou / Brocoli

Synergy.create!(first_vegetable: Vegetable.find_by(name: "Pomme de terre"), second_vegetable: Vegetable.find_by(name: "Chou"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Pomme de terre"), second_vegetable: Vegetable.find_by(name: "Brocoli"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Chou"), second_vegetable: Vegetable.find_by(name: "Brocoli"))

#Chou-fleur / Épinards / Laitue

Synergy.create!(first_vegetable: Vegetable.find_by(name: "Chou-fleur"), second_vegetable: Vegetable.find_by(name: "Epinard"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Chou-fleur"), second_vegetable: Vegetable.find_by(name: "Laitue"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Epinard"), second_vegetable: Vegetable.find_by(name: "Laitue"))

#Haricot vert / Courgette / Maïs

Synergy.create!(first_vegetable: Vegetable.find_by(name: "Haricot vert"), second_vegetable: Vegetable.find_by(name: "Courgette"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Haricot vert"), second_vegetable: Vegetable.find_by(name: "Maïs"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Courgette"), second_vegetable: Vegetable.find_by(name: "Maïs"))

#Poivron / Tomate / Basilic

Synergy.create!(first_vegetable: Vegetable.find_by(name: "Poivron"), second_vegetable: Vegetable.find_by(name: "Tomate"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Poivron"), second_vegetable: Vegetable.find_by(name: "Basilic"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Tomate"), second_vegetable: Vegetable.find_by(name: "Basilic"))

#Oignon / Poireau / Persil

Synergy.create!(first_vegetable: Vegetable.find_by(name: "Oignon"), second_vegetable: Vegetable.find_by(name: "Poireau"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Oignon"), second_vegetable: Vegetable.find_by(name: "Persil"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Poireau"), second_vegetable: Vegetable.find_by(name: "Persil"))

#Pois / Carotte / Persil

Synergy.create!(first_vegetable: Vegetable.find_by(name: "Petit pois"), second_vegetable: Vegetable.find_by(name: "Carotte"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Petit pois"), second_vegetable: Vegetable.find_by(name: "Persil"))
Synergy.create!(first_vegetable: Vegetable.find_by(name: "Carotte"), second_vegetable: Vegetable.find_by(name: "Persil"))

puts "Seeding done!"
