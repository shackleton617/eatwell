Favorite.delete(Favorite.all)
CheckIn.delete(CheckIn.all)

Redemption.delete(Redemption.all)
Offer.delete(Offer.all)

Review.delete(Review.all)
User.delete(User.all)
Restaurant.destroy_all


restaurant_1 = Restaurant.create(

name: "Cozinha Popular da Mouraria",
address: "R. das Olarias 5, Lisbon",
location: "Mouraria, Lisbon",
cuisine: "Portuguese",
description: "Cozinha Popular (\'People\'s Kitchen') da Mouraria is a social project designed to revitalise the multicultural community of Mouraria in Lisbon, promoting the sharing of experiences, building community and providing employment and access to food for those in need.",
phone_number: "926 520 568",
price_for_two: 20,
working_hours: "13:00 - 24:00",
has_community: true,
has_recycling: true,
has_sourcing: true,
photos: "http://blogues.publico.pt/olhos-barriga/files/2015/06/Cozinhas-do-mundo_Ines-Malvar.jpg",

)

sleep(2)

restaurant_2 = Restaurant.create(

name: "Lisbon Winery",
address: "R. da Barroca 13, 1200-047 Lisboa",
location: "Bairro Alto, Lisbon",
cuisine: "Portuguese tapas",
description: "Lisbon Winery is a tasting center and wine bar in Bairro Alto. Here you can travel Portugal's regions without leaving your dining seat. The premium wines, ports, artisanal cheeses and charcuterie are produced by local small producers from all over the country. The space also has an unique 16th century cistern which reminds of Portugal's late medieval times.",
phone_number: "21 826 0132",
price_for_two: 50,
working_hours: "15:00 - 24:00",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "https://u.tfstatic.com/restaurant_photos/223/280223/169/612/lisbon-winery-tabua-ea226.jpg",

)

sleep(2)

restaurant_3 = Restaurant.create(

name: "Foodprintz Cafe",
address: "R. Rodrigo da Fonseca 82A, 1250-193 Lisboa",
location: "Marquês de Pombal, Lisbon",
cuisine: "Vegan",
description: "Organic, locally sourced, wholesome, fair natural food. We present flavors, colors and textures from all over the world. Thinking about the carbon footprint: reducing the incidence and impact of animal cruelty & the damage done to MOTHER EARTH by providing a full plant-based only menu with gluten free, nut free and soy free options.",
phone_number: "21 581 7577",
price_for_two: 22,
working_hours: "12:00 - 19:00",
has_community: true,
has_recycling: true,
has_sourcing: true,
photos: "https://media-cdn.tripadvisor.com/media/photo-s/0d/de/07/db/foodprintz-made-banana.jpg",

)

sleep(2)

restaurant_4 = Restaurant.create(

name: "Vegana Burgers Cais do Sodré",
address: "30, Praça Dom Luís i, 1200-152 Lisboa",
location: "Cais do Sodré, Lisbon",
cuisine: "Vegan",
description: "Há cada vez mais famosos a aderirem às novas tendências, e o veganismo é uma delas. E como todas as modas, há aquelas que vêm para ficar, e nós esperamos que esta seja uma delas. Que todas as modas fossem tão benéficas para os animais, para a nossa saúde e para o nosso planeta como ser vegano.",
phone_number: "21 246 3511",
price_for_two: 20,
working_hours: "12:00 - 22:00",
has_community: false,
has_recycling: true,
has_sourcing: true,
photos: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQChbUBOTxxMVIMDaOhe-gYFSClYnlf0bE5omzqElf0avFI48qK",

)

sleep(2)

restaurant_5 = Restaurant.create(

name: "The Food Temple",
address: "Beco do Jasmim 18, 1100-289 Lisboa",
location: "Socorro, Lisbon",
cuisine: "Vegetarian/Vegan/Fusion",
description: "The Food Temple prides itself as a Cultural Food Community. Indeed the people and ambience are buzzing with a positive spirit. Vegan and vegetarian fare, with a changing menu every day.",
phone_number: "21 887 4397",
price_for_two: 40,
working_hours: "7:30 - 12:00",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "https://media.timeout.com/images/103673553/630/472/image.jpg",

)

sleep(2)

restaurant_6 = Restaurant.create(

name: "Sama Sama Crêpe and Juice Bar",
address: "Tv. Corpo Santo 7, 1200-131 Lisboa",
location: "Cais do Sodré, Lisbon",
cuisine: "Vegetarian/Vegan/Creperie/Juice bar",
description: "Sama Sama is a crêpe and juice bar, serving all-organic crêpes, juices, wine, craft beer and more. The crepes are vegetarian, with vegan options. They come sweet and savory. Owners Sofia and Malte adapt their recipes to what is in season and locally available.

Sama Sama has a thorough approach to recycling and waste reduction. If you bring your own cup, you get a discount on your drink. All the take-out materials are 100 per cent disposable. Sama Sama also collaborates with Garbags (https://www.garbags.eu/) an organization which remakes cardboard waste into fashionable items.

Sama Sama is your healthy and sustainable fast food alternative. Go for a quick take-away lunch or hang out at the bar. Owners Sofia and Malte have plenty of stories to tell!",
phone_number: "21 820 5668",
price_for_two: 20,
working_hours: "9:00 - 18:00",
has_community: false,
has_recycling: true,
has_sourcing: true,
photos: "https://lifecooler.com/files/registos/imagens/459281/387039.jpg",

)

sleep(2)

restaurant_7 = Restaurant.create(

name: "Ao 26 - Vegan Food Project",
address: "R. Vítor Cordon 26, 1200-484 Lisboa",
location: "Cais do Sodré, Lisbon",
cuisine: "Vegetarian/Vegan",
description: "Comprometemo-nos a respeitar a Terra, as pessoas e os animais.
Comprometemo-nos a cuidar do espaço que nos rodeia.
Comprometemo-nos a agradecer as pequenas coisas que nos acontecem.
Manter os pés na Terra e a cabeça e o coração bem lá no alto.
A nossa comida é o resultado da nossa paixão.",
phone_number: "967 989 184",
price_for_two: 30,
working_hours: "12:30 - 23:00",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRGVhnvEcL8-S2PzQU8l-JIBIv-uVBL2AKIy-gLFNJhIZr0LQ6",

)

  sleep(2)

restaurant_8 = Restaurant.create(

name: "Jardim dos Sentidos",
address: "R. da Mãe de Água 3, 1250-154 Lisboa",
location: "Príncipe Real, Lisbon",
cuisine: "Vegeterian/Vegan",
description: "At first glance one perceives a vegetarian restaurant, no doubt. However, as one enters, the space unfolds.
Jardim dos Sentidos has food as one of the basic pillars for growth and improvement of the human consciousness, and in addition to the restaurant, it also provides a therapeutic area open to proposals that are enriching in an authentic and genuine way the individual and collective growth of each one of us.",
phone_number: "21 342 3670",
price_for_two: 30,
working_hours: "12:00 - 22:30",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "https://u.tfstatic.com/restaurant_photos/908/64908/169/612/jardim-dos-sentidos-mini-tabua-de-queijos-vegan-d4d57.jpg",

)

sleep(2)

restaurant_9 = Restaurant.create(

name: "PSI",
address: "Alameda Santo António dos Capuchos, 1150-314 Lisboa",
location: "Pena, Lisbon",
cuisine: "Indian/Asian/Vegeterian/Vegan",
description: "PSI is one of Lisbon´s oldest vegetarian restaurants, having opened its doors more than 15 years ago. The owning founder, a doctor, decided she was going to open the restaurant , and soon after turned what was an abandoned park and cafe into a charming and delightful establishment where one can escape the hustle and bustle of the daily city life and enjoy a wonderful meal.",
phone_number: "21 359 0573",
price_for_two: 30,
working_hours: "12:30 - 22:30",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "https://media-cdn.tripadvisor.com/media/photo-s/0b/53/7b/d9/restaurante-vegetariano.jpg",

)

sleep(2)

restaurant_10 = Restaurant.create(

name: "Mezze",
address: "R. Ângela Pinto 22/23, 1900-067 Lisboa",
location: "Arroios, Lisbon",
cuisine: "Middle Eastern",
description: "Espaço de encontro multicultural para a integração dos refugiados do Médio Oriente, com excelente comida árabe e workshops culturais.",
phone_number: "21 249 4788",
price_for_two: 35,
working_hours: "12:30 - 22:30",
has_community: true,
has_recycling: false,
has_sourcing: false,
photos: "https://b.zmtcdn.com/data/reviews_photos/1bb/c0eef1b7136604ad34e1c91aee1311bb_1508012034.jpg",

)

sleep(2)


restaurant_11 = Restaurant.create(

name: "Pois Cafe",
address: "R. de São João da Praça 93-95, 1100-521 Lisboa",
location: "Baixa-Chiado, Lisbon",
cuisine: "European/Portuguese",
description: "O ambiente relaxado para partilhar histórias em plena zona histórica e desfrutar do brunch e das tartes da casa.",
phone_number: "21 886 2497",
price_for_two: 20,
working_hours: "10:00 - 23:00",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "http://www.poiscafe.com/wp-content/uploads/menu-3-300x200.jpg",

)

sleep(2)

restaurant_12 = Restaurant.create(

name: "Green Beans Cafe Chiado",
address: "R. Chagas 31, 1200-106 Lisboa",
location: "Baixa-Chiado, Lisbon",
cuisine: "Vegan",
description: "A Green Beans é a uma mercearia 100% Vegan situada na baixa lisboeta. Com o objetivo de apresentar uma alternativa justa, ética e saudável, oferece uma grande variedade de produtos de qualidade, biológicos e que respeitam a sustentabilidade.",
phone_number: "924 216 519",
price_for_two: 20,
working_hours: "10:00 - 19:00",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF1PcPVwva_vtfhkTzj0T0smGXQeZou4W6dxNQen4AV1m9oCJS3w",

)

sleep(2)

restaurant_13 = Restaurant.create(

name: "Rio Maravilha",
address: "Rua Rodrigues Faria, 103, Entrada 3, Piso 4, Alcântara, Lisboa",
location: "Alcântara, Lisbon",
cuisine: "Portuguese/Brazilian",
description: "A homenagem ao Rio, o de Janeiro e ao Tejo, que se avista do terraço panorâmico deste quarto andar.",
phone_number: "96 602 8229",
price_for_two: 50,
working_hours: "12:30 - 02:00",
has_community: false,
has_recycling: false,
has_sourcing: true,
photos: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHZ4QYP9goagnwK-0jYkgDcaPUkMh4MymKoFPqRePcPgMLkblbtw",

)

sleep(2)

restaurant_14 = Restaurant.create(

name: "Terra",
address: "R. da Palmeira 15, 1200-311 Lisboa",
location: "Rossio, Lisbon",
cuisine: "Vegetarian/Vegan",
description: "Terra has an excellent lunch buffet with a range of Portuguese dishes adapted for vegetarians and vegans. The ingredients are mostly organic. Be sure to get a spot on the charming terrace!",
phone_number: "21 342 1407",
price_for_two: 35,
working_hours: "12:30 - 24:00",
has_community: false,
has_recycling: true,
has_sourcing: true,
photos: "https://media-cdn.tripadvisor.com/media/photo-s/10/02/ab/10/img-20170723-161056-102.jpg",

)

sleep(2)

restaurant_15 = Restaurant.create(

name: "Cantina das Freiras",
address: "Tv. Ferragial n.1, 1200-184",
location: "Baixa-Chiado, Lisbon",
cuisine: "Mediterranean/Portuguese",
description: "The Cantina Das Freiras is a former nunnery on the top floor of a typical old building with a roof terrace, a rarity in Lisbon. The decor is as unpretentious as the food is good and the view is stunning.",
phone_number: "21 324 0910",
price_for_two: 20,
working_hours: "8:30 - 15:00",
has_community: true,
has_recycling: false,
has_sourcing: false,
photos: "https://media-cdn.tripadvisor.com/media/photo-s/0e/38/eb/64/20170119-143855-largejpg.jpg",

)

sleep(2)

restaurant_16 = Restaurant.create(

name: "A Padaria Portuguesa",
address: "Av. 24 de Julho 1G, 1200-425 Lisbon",
location: "Cais do Sodré, Lisbon",
cuisine: "Portuguese bakery",
description: "A Padaria Portuguesa has many bakeries all over town. Grab a ticket, wait for your number to be called, and order away. Service is fast, the food is cheap and delicious. The decor is warm and modern.  This is a local and visitor's favourite!",
phone_number: "21 346 0105",
price_for_two: 14,
working_hours: "7:00 - 22:45",
has_community: false,
has_recycling: true,
has_sourcing: false,
photos: "http://api.ning.com/files/JtotRF7dxCUCf-6m1VzohywPnoU5yTdu1*T0rcH*tyMj*E44QRov1s7fD7ParZVumhtp3kdAfap4SKJin3mV77LldU7IJFQY/APadariaPortuguesa1.jpg",

)






Offer.destroy_all

offer_1 = Offer.create(

expiration_date: Date.today + 20.days,
company: "Vegana Burgers",
token_value: 30,
description: "Get a free burger meal!",
photo: "https://assets3.thrillist.com/v1/image/1762665/size/tmg-article_default_mobile.jpg"
)

offer_2 = Offer.create(

expiration_date: Date.today + 30.days,
company: "Sama Sama Crêpe and Juice Bar",
token_value: 20,
description: "Get a free coffee, tea (the ginger tea is amazing!) or lemonade when purchasing a crêpe!",
photo: "https://www.thecocktailproject.com/sites/default/files/incredible-thumb-Jim-Beam-Lemonade.jpg"

)

offer_3 = Offer.create(

expiration_date: Date.today + 60.days,
company: "Ria Maravilha",
token_value: 10,
description: "Get a caneca of artesanal beer!",
photo: "https://flggcanyonaletrail.files.wordpress.com/2014/04/savdist-com.jpg"

)

offer_4 = Offer.create(

expiration_date: Date.today + 45.days,
company: "Lisbon Winery",
token_value: 10,
description: "Get a free port wine with a two-wine tasting (a red and a white)!",
photo: "https://imageproxy-observadorontime.netdna-ssl.com/700x,q85/https://s3cdn-observadorontime.netdna-ssl.com/wp-content/uploads/2017/04/17193622/istock-494807824_770x433_acf_cropped.jpg"

)





















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
