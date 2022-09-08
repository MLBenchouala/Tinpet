Match.destroy_all
Swipe.destroy_all
Pet.destroy_all
User.destroy_all

puts 'Users creation...'
user_1 = User.new(name: "Louis", walk: false, more: true, description: "Je suis en panne d'inspi donc je compte sur mon chien pour trouver la bonne", age: 22, gender: "homme", orientation: "hétéro", email: "1.1@test.com", password: "123456", address: "Paris")
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/5f/Louis_XIV_of_France.jpg")
user_1.photos.attach(io: file, filename: "user")
user_1.save!

user_2 = User.new(name: "Jade", walk: true, more: false, description: "Ma chienne veut faire de nouvelles rencontres et moi aussi", age: 25, gender: "femme", orientation: "hétéro", email: "2.2@test.com", password: "123456", address: "Paris")
file = URI.open("https://global-img.gamergen.com/ea-electronic-arts-jade-raymond_0000811378.jpg")
user_2.photos.attach(io: file, filename: "user")
user_2.save!

user_3 = User.new(name: "Nathan", walk: true, more: true, description: "Ma chienne adore sortir mais j'en ai marre d'y aller tout seul", age: 36, gender: "homme", orientation: "hétéro", email: "3.3@test.com", password: "123456", address: "Paris")
file = URI.open("https://static.wikia.nocookie.net/uncharted/images/9/9d/Nathan_Drake_from_A_Thief%27s_End.png/revision/latest?cb=20180521172750")
user_3.photos.attach(io: file, filename: "user")
user_3.save!

user_4 = User.new(name: "Sander", walk: true, more: true, description: "Je suis nouveau sur Paris et j'aimerais faire de nouvelles rencontres pour moi et mon chien", age: 30, gender: "homme", orientation: "hétéro", email: "4.4@test.com", password: "123456", address: "Paris")
file = URI.open("https://www.institinvest.com/sites/default/files/styles/scale_width_626/public/2020-02/trond-grande-press-photo-high-res_cropped_0.jpg?itok=mEZ4mcxW")
user_4.photos.attach(io: file, filename: "user")
user_4.save!

user_5 = User.new(name: "Annika", walk: false, more: true, description: "J'aimerais savoir qui sera le premier à trouver l'amour entre moi et ma chienne", age: 45, gender: "femme", orientation: "hétéro", email: "5.5@test.com", password: "123456", address: "Paris")
file = URI.open("https://www.baiskadreams.com/14698-thickbox_default/deguisement-hollandaise-bleu-de-delft-femme-luxe.jpg")
user_5.photos.attach(io: file, filename: "user")
user_5.save!

user_6 = User.new(name: "Olivia", walk: false, more: true, description: "On dit que le chien est le meilleur ami de l'homme...", age: 24, gender: "femme", orientation: "hétéro", email: "6.6@test.com", password: "123456", address: "Paris")
file = URI.open("http://flashmode.tn/wp-content/uploads/2016/02/Delta-Goodrem-782x1024.jpg")
user_6.photos.attach(io: file, filename: "user")
user_6.save!

user_7 = User.new(name: "Laura", walk: true, more: true, description: "Je souhaite rencontrer des gens qui partagent ma passion pour les animaux", age: 26, gender: "femme", orientation: "hétéro", email: "7.7@test.com", password: "123456", address: "Paris")
file = URI.open("https://thumbs.dreamstime.com/z/femme-v%C3%A9t%C3%A9rinaire-30548295.jpg")
user_7.photos.attach(io: file, filename: "user")
user_7.save!

user_8 = User.new(name: "Bertrand", walk: false, more: true, description: "Je suis pas ici pour me balader", age: 54, gender: "homme", orientation: "hétéro", email: "8.8@test.com", password: "123456", address: "Paris")
file = URI.open("https://www.dhnet.be/resizer/lTfIIttoOCbSJXIxuqFSHsLYHWM=/768x512/filters:focal(1147x773:1157x763)/cloudfront-eu-central-1.images.arcpublishing.com/ipmgroup/SSJNQCWUYFD6TMCKRMNTPU6MZQ.jpg")
user_8.photos.attach(io: file, filename: "user")
user_8.save!

user_9 = User.new(name: "Hildebrune", walk: true, more: true, description: "Pourquoi chercher l'amour quand on a un chien ?", age: 42, gender: "femme", orientation: "hétéro", email: "9.9@test.com", password: "123456", address: "Paris")
file = URI.open("https://sedyl.cnrs.fr/wp-content/uploads/2022/04/hildebrand-1280x1706.jpg")
user_9.photos.attach(io: file, filename: "user")
user_9.save!

user_10 = User.new(name: "Marjorie", walk: false, more: true, description: "Le chien reste chien, serait-il élevé par les lions", age: 34, gender: "femme", orientation: "hétéro", email: "10.10@test.com", password: "123456", address: "Paris")
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/d/df/Sanna_Marin_M-7403_02_%28cropped%29.jpg")
user_10.photos.attach(io: file, filename: "user")
user_10.save!

user_11 = User.new(name: "Mathilde", walk: true, more: true, description: "Qui m'aime aime mon chien", age: 27, gender: "femme", orientation: "hétéro", email: "11.11@test.com", password: "123456", address: "Paris")
file = URI.open("https://i.pinimg.com/550x/20/15/4b/20154b24d267ebde046fd11ad1190ff3.jpg")
user_11.photos.attach(io: file, filename: "user")
user_11.save!

user_12 = User.new(name: "Jean", walk: true, more: true, description: "Le chien rit avec sa queue. Je cherche les personnes les plus drôles", age: 41, gender: "homme", orientation: "hétéro", email: "12.12@test.com", password: "123456", address: "Paris")
file = URI.open("https://www.premiere.fr/sites/default/files/styles/scale_crop_1280x720/public/2018-05/jean-dujardin-oss117-01_0.jpg")
user_12.photos.attach(io: file, filename: "user")
user_12.save!

user_13 = User.new(name: "Morgoth", walk: true, more: false, description: "Au-delà des Cercles du Monde, je ne les poursuivrais certes pas", age: 20000, gender: "Ainur", orientation: "Terre du Milieu", email: "13.13@test.com", password: "123456", address: "Paris")
file = URI.open("https://images7.alphacoders.com/400/thumb-1920-400717.jpg")
user_13.photos.attach(io: file, filename: "user")
user_13.save!

user_14 = User.new(name: "Mireille", walk: true, more: false, description: "Le célibataire vit comme un roi et meurt comme un chien, alors que l'homme marié vit comme un chien et meurt comme un roi", age: 62, gender: "femme", orientation: "hétéro", email: "14.14@test.com", password: "123456", address: "Paris")
file = URI.open("https://images.ladepeche.fr/api/v1/images/view/63146def665d9828f73c3db5/large/image.jpg?v=8")
user_14.photos.attach(io: file, filename: "user")
user_14.save!

user_15 = User.new(name: "Natalia", walk: false, more: true, description: "Je sors d'une ralation et je veux juste m'amuser. Il avait tout d'un chien sauf le côté fidèle...", age: 24, gender: "femme", orientation: "hétéro", email: "15.15@test.com", password: "123456", address: "Paris")
file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/why-natalie-dyer-doesnt-post-on-social-media-1605262861.jpg?crop=1.00xw:0.780xh;0,0.0265xh&resize=640:*")
user_15.photos.attach(io: file, filename: "user")
user_15.save!

user_16 = User.new(name: "Gandalf", walk: true, more: false, description: "Repartez dans l'ombre ! Le feu sombre ne vous servira à rien, flamme d'Udûn ! Vous ne passerez pas", age: 10000, gender: "Maia", orientation: "Mordor", email: "16.16@test.com", password: "123456", address: "Paris")
file = URI.open("https://static.wikia.nocookie.net/lotr/images/e/e7/Gandalf_the_Grey.jpg/revision/latest?cb=20121110131754")
user_16.photos.attach(io: file, filename: "user")
user_16.save!

user_17 = User.new(name: "Louise", walk: true, more: true, description: "J'adore mon chien mais je cherche quelqu'un d'autre pour binge watcher", age: 22, gender: "femme", orientation: "hétéro", email: "17.17@test.com", password: "123456", address: "Paris")
file = URI.open("https://resize-elle.ladmedia.fr/rcrop/796,1024/img/var/plain_site/storage/images/people/la-vie-des-people/news/louise-bourgoin-a-canal-j-avais-un-debut-d-ulcere/13374961-1-fre-FR/Louise-Bourgoin-A-Canal-j-avais-un-debut-d-ulcere.jpg")
user_17.photos.attach(io: file, filename: "user")
user_17.save!

user_18 = User.new(name: "Léo", walk: false, more: true, description: "Aucun doute le chien est fidèle. Mais nous faut-il pour cela prendre exemple sur lui ? Il est fidèle à l'homme non pas au chien...", age: 29, gender: "homme", orientation: "hétéro", email: "18.18@test.com", password: "123456", address: "Paris")
file = URI.open("https://voyage-onirique.com/wp-content/uploads/2019/03/leonardo.jpg")
user_18.photos.attach(io: file, filename: "user")
user_18.save!

user_19 = User.new(name: "Bart", walk: true, more: false, description: "Comme il y a chien et chat dans chaque sexe, il faut être alternativement chien avec les chats et chat avec les chiens", age: 35, gender: "homme", orientation: "hétéro", email: "19.19@test.com", password: "123456", address: "Paris")
file = URI.open("https://static.wikia.nocookie.net/simpsons/images/a/aa/Bart_simpson.png/revision/latest/scale-to-width/360?cb=20181028170616&path-prefix=fr")
user_19.photos.attach(io: file, filename: "user")
user_19.save!

user_20 = User.new(name: "Julien", walk: false, more: true, description: "J'adore les chiens mais j'aime surtout le bruit blanc de l'eau", age: 26, gender: "homme", orientation: "hétéro", email: "20.20@test.com", password: "123456", address: "Paris")
file = File.open(File.join(Rails.root, "/app/assets/images/photo-profil-Julien.png"))
user_20.photos.attach(io: file, filename: "user")
user_20.save!

user_21 = User.new(name: "Chloé", walk: true, more: true, description: "La difference entre moi et ma chienne c'est le prix du collier", age: 23, gender: "femme", orientation: "hétéro", email: "21.21@test.com", password: "123456", address: "Paris")
file = URI.open("https://images.mubicdn.net/images/cast_member/24168/cache-2073-1604954460/image-w856.jpg?size=800x")
user_21.photos.attach(io: file, filename: "user")
user_21.save!

puts "Created #{User.count} users"

puts 'Pets creation...'
pet_1 = Pet.new(name: "Rex", sexe: "Male", race: "Labrador", age: 5, description: "Salut je m'appelle Rex et je crois que Louis a vraiment besoin d'aide", user: user_1)
file = URI.open("https://static.wamiz.com/images/animaux/chiens/large/labrador-retriever.jpg")
pet_1.photos.attach(io: file, filename: "animal")
pet_1.save!

pet_2 = Pet.new(name: "Rocky", sexe: "Male", race: "Golden retriever", age: 4, description: "Je suis peut être un Golden retriever mais un chien reste un chien même s'il a une queue en or", user: user_2)
file = URI.open("https://i.f1g.fr/media/cms/orig/2021/08/18/94886ffaf381c3cfd9393372c7a820cefb8b3e2b8f56357044d17624312d02b2.jpg")
pet_2.photos.attach(io: file, filename: "animal")
pet_2.save!

pet_3 = Pet.new(name: "Snow", sexe: "Male", race: "Berger allemand", age: 2, description: "Visiblement Nathan se fait chier avec moi", user: user_3)
file = URI.open("https://www.zooplus.fr/magazine/wp-content/uploads/2018/09/deutscher-sch%C3%A4ferhund-768x511.jpg")
pet_3.photos.attach(io: file, filename: "animal")
pet_3.save!

pet_4 = Pet.new(name: "Nala", sexe: "Femelle", race: "Bulldog anglais", age: 3, description: "Je suis une petite chienne scandinave et je veux faire des rencontres sur Paris", user: user_4)
file = URI.open("https://geo.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fgeo.2F2022.2F06.2F16.2Fbf9ad234-c314-46e9-b56f-1eab286747cb.2Ejpeg/1150x647/background-color/ffffff/quality/70/le-bouledogue-anglais-souffre-de-la-gueule-faisant-son-succes.jpg")
pet_4.photos.attach(io: file, filename: "animal")
pet_4.save!

pet_5 = Pet.new(name: "Luna", sexe: "Femelle", race: "Bulldog français", age: 3, description: "Salut ! Je suis la plus française des petites chiennes", user: user_5)
file = URI.open("https://www.oobaooba.fr/img/post/41.jpg")
pet_5.photos.attach(io: file, filename: "animal")
pet_5.save!

pet_6 = Pet.new(name: "Max", sexe: "Male", race: "Husky de Sibérie", age: 6, description: "Je suis content de plus être en Russie", user: user_6)
file = URI.open("https://jardinage.lemonde.fr/images/dossiers/2017-07/husky-1-105935.jpg")
pet_6.photos.attach(io: file, filename: "animal")
pet_6.save!

pet_7 = Pet.new(name: "Jack", sexe: "Male", race: "Beagle", age: 5, description: "Quand le chien a la queue verticale c'est qu'il est en confiance", user: user_7)
file = URI.open("https://vetstreet-brightspot.s3.amazonaws.com/7b/0526609e8c11e0a2380050568d634f/file/Beagle-3-645mk062311.jpg")
pet_7.photos.attach(io: file, filename: "animal")
pet_7.save!

pet_8 = Pet.new(name: "Newton", sexe: "Male", race: "Berger australien", age: 4, description: "Gare a mon baton de berger", user: user_8)
file = URI.open("https://www.illicoveto.com/wp-content/uploads/berger-australien.jpg")
pet_8.photos.attach(io: file, filename: "animal")
pet_8.save!

pet_9 = Pet.new(name: "Pandora", sexe: "Femelle", race: "Akita américain", age: 2, description: "Je m'appelle Pandora mais mes potos m'appellent Pando", user: user_9)
file = URI.open("https://www.oobaooba.fr/img/post/48.jpg")
pet_9.photos.attach(io: file, filename: "animal")
pet_9.save!

pet_10 = Pet.new(name: "Pogo", sexe: "Male", race: "Ancien chien d'arrêt Danois", age: 4, description: "J'ai le nom d'un artiste et une race qui sonne comme un ancien job de la fonction publique", user: user_10)
file = URI.open("https://static.wamiz.com/images/animaux/chiens/large/ancien-chien-d-arret-danois.jpg")
pet_10.photos.attach(io: file, filename: "animal")
pet_10.save!

pet_11 = Pet.new(name: "Punch", sexe: "Male", race: "Barbu Tchèque", age: 9, description: "C'est la rue qui m'a donné mon nom", user: user_11)
file = URI.open("https://www.centrale-canine.fr/sites/default/files/styles/widget_slideshow_basic_image_scale_height_407/public/2018-04/barbu_tcheque8.jpg.webp?itok=gmIGL2lJ")
pet_11.photos.attach(io: file, filename: "animal")
pet_11.save!

pet_12 = Pet.new(name: "Mitaine", sexe: "Femelle", race: "Berger de Maremme et des Abruzzes", age: 5, description: "Mitaine, 5 ans, Berger de Maremme et des Abruzzes, aristocrate et chienne d'OSS 117", user: user_12)
file = URI.open("https://content.omlet.co.uk/images/cache/512/367/Dog-Maremma_Sheepdog-A_big_shaggy_Maremma_Sheepdog_lying_down.jpg")
pet_12.photos.attach(io: file, filename: "animal")
pet_12.save!

pet_13 = Pet.new(name: "Ungoliant", sexe: "Femelle", race: "Inconnue", age: 20000, description: "Je suis venu ici pour manger...", user: user_13)
file = URI.open("https://static.wikia.nocookie.net/lotr/images/7/77/Ungoliant_Spider.jpg/revision/latest?cb=20211216192522")
pet_13.photos.attach(io: file, filename: "animal")
pet_13.save!

pet_14 = Pet.new(name: "Prune", sexe: "Femelle", race: "Carlin", age: 2, description: "On n'attache pas son chien avec des saucisses", user: user_14)
file = URI.open("https://www.illicoveto.com/wp-content/uploads/Carlin.jpg")
pet_14.photos.attach(io: file, filename: "animal")
pet_14.save!

pet_15 = Pet.new(name: "Pika", sexe: "Femelle", race: "Chien courant espagnol", age: 4, description: "Vamos a comer chicos !!", user: user_15)
file = URI.open("https://napoleon-storage.s3.eu-west-3.amazonaws.com/catalog-categories/386_chien_de_race_chien_courant_espagnol__020632200_1602_13022014.jpg")
pet_15.photos.attach(io: file, filename: "animal")
pet_15.save!

pet_16 = Pet.new(name: "Gripoil", sexe: "Male", race: "Mearas", age: 10000, description: "À ne pas confondre avec Pil-Poil cowbow", user: user_16)
file = URI.open("https://i.ytimg.com/vi/yYKbF67ilIs/maxresdefault.jpg")
pet_16.photos.attach(io: file, filename: "animal")
pet_16.save!

pet_17 = Pet.new(name: "Romeo", sexe: "Male", race: "Chien courant italien", age: 3, description: "Qualle ristorante mi racommanda nel quartiere ?", user: user_17)
file = URI.open("https://www.kingpet.fr/ph/p9DnthqHW8X3UyzB51MXZR5FxVDbm2sU4yMdk1.jpg?v=31&fm=webp&w=1080&h=810&q=35")
pet_17.photos.attach(io: file, filename: "animal")
pet_17.save!

pet_18 = Pet.new(name: "Moka", sexe: "Femelle", race: "Brachet autrichien noir et feu", age: 2, description: "Que sert à l'homme de conquérir l'univers s'il ne peut empêcher son chien de chier par terre", user: user_18)
file = URI.open("https://i.skyrock.net/4507/27124507/pics/1164444370_small.jpg")
pet_18.photos.attach(io: file, filename: "animal")
pet_18.save!

pet_19 = Pet.new(name: "Rambo", sexe: "Male", race: "Alapaha Blue Blood Bulldog", age: 5, description: "C'était pas ma guerre...", user: user_19)
file = URI.open("https://vetstreet.brightspotcdn.com/dims4/default/32f842b/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F8f%2F9c7f20b14611e092fe0050568d634f%2Ffile%2FAlapaha-Blue-Blood-Bulldog-1-380mk070111.jpg")
pet_19.photos.attach(io: file, filename: "animal")
pet_19.save!

pet_20 = Pet.new(name: "Shelby", sexe: "Male", race: "Cocker Spaniel", age: 8, description: "I just bite his leg… he looked at me the wrong way", user: user_20)
file = URI.open("https://static.wamiz.com/images/animaux/chiens/large/cocker-anglais.jpg")
pet_20.photos.attach(io: file, filename: "animal")
pet_20.save!

pet_21 = Pet.new(name: "Mouloud", sexe: "Male", race: "Berger Berbère", age: 5, description: "Toujours à la recherche de Mohamed", user: user_21)
file = URI.open("https://static.wamiz.com/images/animaux/chiens/large/berger-de-l-atlas.jpg")
pet_21.photos.attach(io: file, filename: "animal")
pet_21.save!

puts "Created #{Pet.count} pets"

puts 'Swipes creation...'
user_1_for_user_2_pet = Swipe.create(user: user_1, pet: user_2.pets.first, liked: true)
Swipe.create(user: user_1, pet: user_3.pets.first, liked: false)
user_1_for_user_4_pet = Swipe.create(user: user_1, pet: user_4.pets.first, liked: true)
Swipe.create(user: user_1, pet: user_5.pets.first, liked: false)

# user_2_for_user_1_pet = Swipe.create(user: user_2, pet: user_1.pets.first, liked: true)
user_4_for_user_1_pet = Swipe.create(user: user_4, pet: user_1.pets.first, liked: true)

puts 'Matches creation...'
# match_user_1_with_user_2 = Match.create(user1: user_1, user2: user_2)
# match_user_1_with_user_4 = Match.create(user1: user_4, user2: user_1)

# MatchedSwipe.create(match: match_user_1_with_user_4, swipe: user_1_for_user_4_pet)
# MatchedSwipe.create(match: match_user_1_with_user_4, swipe: user_4_for_user_1_pet)
