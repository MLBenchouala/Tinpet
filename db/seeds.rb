Match.destroy_all
Swipe.destroy_all
Pet.destroy_all
User.destroy_all

puts 'Users creation...'
user_1 = User.new(name: "Louis", walk: false, more: true, description: "Je suis en panne d'inspi donc je compte sur mon chien pour trouver la bonne", age: 22, gender: "homme", orientation: "hétéro", email: "teste.exemple@test.com", password: "123456", address: "10 rue Gros")
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/5f/Louis_XIV_of_France.jpg")
user_1.photos.attach(io: file, filename: "user")
user_1.save!

user_2 = User.new(name: "Jade", walk: true, more: false, description: "Ma chienne veut faire de nouvelles rencontres et moi aussi", age: 25, gender: "femme", orientation: "hétéro", email: "testa.exemple@test.com", password: "123456")
file = URI.open("https://global-img.gamergen.com/ea-electronic-arts-jade-raymond_0000811378.jpg")
user_2.photos.attach(io: file, filename: "user")
user_2.save!

user_3 = User.new(name: "Nathan", walk: true, more: true, description: "Ma chienne adore sortir mais j'en ai marre d'y aller tout seul", age: 36, gender: "homme", orientation: "hétéro", email: "testo.exemple@test.com", password: "123456")
file = URI.open("https://static.wikia.nocookie.net/uncharted/images/9/9d/Nathan_Drake_from_A_Thief%27s_End.png/revision/latest?cb=20180521172750")
user_3.photos.attach(io: file, filename: "user")
user_3.save!

user_4 = User.new(name: "Sander", walk: true, more: true, description: "Je suis nouveau sur Paris et j'aimerais faire de nouvelles rencontres pour moi et mon chien", age: 30, gender: "homme", orientation: "hétéro", email: "testu.exemple@test.com", password: "123456")
file = URI.open("https://www.institinvest.com/sites/default/files/styles/scale_width_626/public/2020-02/trond-grande-press-photo-high-res_cropped_0.jpg?itok=mEZ4mcxW")
user_4.photos.attach(io: file, filename: "user")
user_4.save!

user_5 = User.new(name: "Annika", walk: false, more: true, description: "J'aimerais savoir qui sera le premier à trouver l'amour entre moi et ma chienne", age: 45, gender: "femme", orientation: "hétéro", email: "testm.exemple@test.com", password: "123456")
file = URI.open("https://www.baiskadreams.com/14698-thickbox_default/deguisement-hollandaise-bleu-de-delft-femme-luxe.jpg")
user_5.photos.attach(io: file, filename: "user")
user_5.save!

user_6 = User.new(name: "Olivia", walk: false, more: true, description: "On dit que le chien est le meilleur ami de l'homme...", age: 24, gender: "femme", orientation: "hétéro", email: "testi.exemple@test.com", password: "123456")
file = URI.open("http://flashmode.tn/wp-content/uploads/2016/02/Delta-Goodrem-782x1024.jpg")
user_6.photos.attach(io: file, filename: "user")
user_6.save!

user_7 = User.new(name: "Laura", walk: true, more: true, description: "Je souhaite rencontrer des gens qui partagent ma passion pour les animaux", age: 26, gender: "femme", orientation: "hétéro", email: "testl.exemple@test.com", password: "123456")
file = URI.open("https://thumbs.dreamstime.com/z/femme-v%C3%A9t%C3%A9rinaire-30548295.jpg")
user_7.photos.attach(io: file, filename: "user")
user_7.save!

user_8 = User.new(name: "Bertrand", walk: false, more: true, description: "Je suis pas ici pour me balader", age: 54, gender: "homme", orientation: "hétéro", email: "testx.exemple@test.com", password: "123456")
file = URI.open("https://www.dhnet.be/resizer/lTfIIttoOCbSJXIxuqFSHsLYHWM=/768x512/filters:focal(1147x773:1157x763)/cloudfront-eu-central-1.images.arcpublishing.com/ipmgroup/SSJNQCWUYFD6TMCKRMNTPU6MZQ.jpg")
user_8.photos.attach(io: file, filename: "user")
user_8.save!

puts "Created #{User.count} users"

puts 'Pets creation...'
pet_1 = Pet.new(name: "Rex", sexe: "male", race: "Labrador", age: 5, description: "Salut je m'appelle Rex et je crois que Louis a vraiment besoin d'aide", user: user_1)
file = URI.open("https://static.wamiz.com/images/animaux/chiens/large/labrador-retriever.jpg")
pet_1.photos.attach(io: file, filename: "animal")
pet_1.save!

pet_2 = Pet.new(name: "Rocky", sexe: "male", race: "Golden retriever", age: 4, description: "Jade dit à tout le monde que je veux faire des rencontres mais en vrai elle est juste dépressive", user: user_2)
file = URI.open("https://i.f1g.fr/media/cms/orig/2021/08/18/94886ffaf381c3cfd9393372c7a820cefb8b3e2b8f56357044d17624312d02b2.jpg")
pet_2.photos.attach(io: file, filename: "animal")
pet_2.save!

pet_3 = Pet.new(name: "Snow", sexe: "male", race: "Berger allemand", age: 2, description: "Visiblement Nathan se fait chier avec moi", user: user_3)
file = URI.open("https://www.zooplus.fr/magazine/wp-content/uploads/2018/09/deutscher-sch%C3%A4ferhund-768x511.jpg")
pet_3.photos.attach(io: file, filename: "animal")
pet_3.save!

pet_4 = Pet.new(name: "Nala", sexe: "femelle", race: "Bulldog anglais", age: 3, description: "Je suis une petite chienne scandinave et je veux faire des rencontres sur Paris", user: user_4)
file = URI.open("https://geo.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fgeo.2F2022.2F06.2F16.2Fbf9ad234-c314-46e9-b56f-1eab286747cb.2Ejpeg/1150x647/background-color/ffffff/quality/70/le-bouledogue-anglais-souffre-de-la-gueule-faisant-son-succes.jpg")
pet_4.photos.attach(io: file, filename: "animal")
pet_4.save!

pet_5 = Pet.new(name: "Luna", sexe: "femelle", race: "Bulldog français", age: 3, description: "Salut ! Je suis la plus française des petites chiennes", user: user_5)
file = URI.open("https://www.oobaooba.fr/img/post/41.jpg")
pet_5.photos.attach(io: file, filename: "animal")
pet_5.save!

pet_6 = Pet.new(name: "Max", sexe: "male", race: "Husky de Sibérie", age: 6, description: "Je veux retourner en Sibérie", user: user_6)
file = URI.open("https://jardinage.lemonde.fr/images/dossiers/2017-07/husky-1-105935.jpg")
pet_6.photos.attach(io: file, filename: "animal")
pet_6.save!

pet_7 = Pet.new(name: "Jack", sexe: "male", race: "Beagle", age: 5, description: "Quand le chien a la queue verticale c'est qu'il est en confiance", user: user_7)
file = URI.open("https://www.zoomalia.com/blogz/2597/tout-savoir-sur-le-beagle.jpeg")
pet_7.photos.attach(io: file, filename: "animal")
pet_7.save!

pet_8 = Pet.new(name: "Newton", sexe: "male", race: "Berger australien", age: 4, description: "Quand une femme change d'homme elle change de coiffure", user: user_8)
file = URI.open("https://www.illicoveto.com/wp-content/uploads/berger-australien.jpg")
pet_8.photos.attach(io: file, filename: "animal")
pet_8.save!

puts "Created #{Pet.count} pets"

puts 'Swipes creation...'
user_1_for_user_2_pet = Swipe.create(user: user_1, pet: user_2.pets.first, liked: true)
Swipe.create(user: user_1, pet: user_3.pets.first, liked: false)
user_1_for_user_4_pet = Swipe.create(user: user_1, pet: user_4.pets.first, liked: true)
Swipe.create(user: user_1, pet: user_5.pets.first, liked: false)

user_2_for_user_1_pet = Swipe.create(user: user_2, pet: user_1.pets.first, liked: true)
user_4_for_user_1_pet = Swipe.create(user: user_4, pet: user_1.pets.first, liked: true)

puts 'Matches creation...'
match_user_1_with_user_2 = Match.create(user1: user_1, user2: user_2)
match_user_1_with_user_4 = Match.create(user1: user_4, user2: user_1)

MatchedSwipe.create(match: match_user_1_with_user_4, swipe: user_1_for_user_4_pet)
MatchedSwipe.create(match: match_user_1_with_user_4, swipe: user_4_for_user_1_pet)

