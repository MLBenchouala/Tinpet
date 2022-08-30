# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create(name: "Louis", description: "Je suis en panne d'inspi donc je compte sur mon chien pour trouver la bonne", age: 22, genre: "homme", orientation: "hétéro", email: "teste.exemple@test.com", password: "123456")
user_1.save!
user_2 = User.create(name: "Jade", description: "Ma chienne veut faire de nouvelles rencontres et moi aussi", age: 25, genre: "femme", orientation: "hétéro", email: "testa.exemple@test.com", password: "123456")
user_2.save!
user_3 = User.create(name: "Nathan", description: "Ma chienne adore sortir mais j'en ai marre d'y aller tout seul", age: 36, genre: "homme", orientation: "hétéro", email: "testo.exemple@test.com", password: "123456")
user_3.save!
user_4 = User.create(name: "Sander", description: "Je suis nouveau sur Paris et j'aimerais faire de nouvelles rencontres pour moi et mon chien", age: 30, genre: "homme", orientation: "hétéro", email: "testu.exemple@test.com", password: "123456")
user_4.save!
user_5 = User.create(name: "Annika", description: "J'aimerais savoir qui sera le premier à trouver l'amour entre moi et mes deux chiens", age: 45, genre: "femme", orientation: "hétéro", email: "testm.exemple@test.com", password: "123456")
user_5.save!
user_6 = User.create(name: "Olivia", description: "On dit que le chien est le meilleur ami de l'homme...", age: 24, genre: "femme", orientation: "hétéro", email: "testi.exemple@test.com", password: "123456")
user_6.save!
user_7 = User.create(name: "Laura", description: "Je souhaite rencontrer des gens qui partagent ma passion pour les animaux", age: 26, genre: "femme", orientation: "hétéro", email: "testl.exemple@test.com", password: "123456")
user_7.save!
user_8 = User.create(name: "Bertrand", description: "Je suis pas ici pour me balader", age: 54, genre: "homme", orientation: "hétéro", email: "testx.exemple@test.com", password: "123456")
user_8.save!

pet_1 = Pet.new(name: "Rex", sexe: "male", race: "Labrador", age: 5, description: "Salut je m'appelle Rex et je crois que Louis a vraiment besoin d'aide", user: user_1)
file = URI.open("https://static.wamiz.com/images/animaux/chiens/large/labrador-retriever.jpg")
pet_1.photo.attach(io: file, filename: "animal")
pet_1.save!

pet_2 = Pet.create(name: "Rocky", sexe: "male", race: "Golden retriever", age: 4, descriptions: "Jade dit à tout le monde que je veux faire des rencontres mais en vrai elle est juste dépressive", user: user_2)
file = URI.open("https://i.f1g.fr/media/cms/orig/2021/08/18/94886ffaf381c3cfd9393372c7a820cefb8b3e2b8f56357044d17624312d02b2.jpg")
pet_2.photo.attach(io: file, filename: "animal")
pet_2.save!

pet_3 = Pet.create(name: "Snow", sexe: "male", race: "German shepherd", age: 2, description: "Visiblement Nathan se fait chier avec moi", user: user_3)
file = URI.open("https://www.zooplus.fr/magazine/wp-content/uploads/2018/09/deutscher-sch%C3%A4ferhund-768x511.jpg")
pet_3.photo.attach(io: file, filename: "animal")
pet_3.save!

pet_4 = Pet.create(name: "Nala", sexe: "female", race: "British bulldog", age: 3, description: "Je suis une petite chienne scandinave et je veux faire des rencontres sur Paris", user: user_4)
file = URI.open("https://geo.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fgeo.2F2022.2F06.2F16.2Fbf9ad234-c314-46e9-b56f-1eab286747cb.2Ejpeg/1150x647/background-color/ffffff/quality/70/le-bouledogue-anglais-souffre-de-la-gueule-faisant-son-succes.jpg")
pet_4.photo.attach(io: file, filename: "animal")
pet_4.save!

pet_5 = Pet.create(name: "Luna", sexe: "female", race: "French bulldog", age: 3, description: "Salut ! Je suis la soeur de Leo et si je sais pas comment expliquer à Annika qu'elle perd son temps", user: user_5)
file = URI.open("https://www.oobaooba.fr/img/post/41.jpg")
pet_5.photo.attach(io: file, filename: "animal")
pet_5.save!

pet_6 = Pet.create(name: "Leo", sexe: "male", race: "French bulldog", age: 3, description: "Luna n'est pas ma soeur...", user: user_5)
file = URI.open("https://www.oobaooba.fr/img/post/41.jpg")
pet_6.photo.attach(io: file, filename: "animal")
pet_6.save!

pet_7 = Pet.create(name: "Max", sexe: "male", race: "Siberian husky", age: 6, description: "Je veux retourner en Sibérie", user: user_6)
file = URI.open("https://jardinage.lemonde.fr/images/dossiers/2017-07/husky-1-105935.jpg")
pet_7.photo.attach(io: file, filename: "animal")
pet_7.save!

pet_8 = Pet.create(name: "Jack", sexe: "male", race: "Beagle", age: 5, description: "Quand le chien a la queue verticale c'est qu'il est en confiance", user: user_7)
file = URI.open("https://www.zoomalia.com/blogz/2597/tout-savoir-sur-le-beagle.jpeg")
pet_8.photo.attach(io: file, filename: "animal")
pet_8.save!

pet_9 = Pet.create(name: "Newton", sexe: "male", race: "Australian shepherd", age: 4, description: "Quand une femme change d'homme elle change de coiffure", user: user_8)
file = URI.open("https://www.illicoveto.com/wp-content/uploads/berger-australien.jpg")
pet_9.photo.attach(io: file, filename: "animal")
pet_9.save!

p "Created #{User.count} users"
p "Created #{Pet.count} pets"
