# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

User.destroy_all
Supe.destroy_all
Product.destroy_all
Cart.destroy_all
Comment.destroy_all
Post.destroy_all
Event.destroy_all


the_seven = [
    { 
        :name => 'Homelander',
        :image_url => 'https://m.media-amazon.com/images/G/01/pv_starlight/theboys-s2-8e73b1865817/SevenCarouselImage_1920x1080_Homelander_deb1265a._QL75_.jpg',
        :bio => 'Face of a movie star and the power of a god. The greatest superhero alive and the leader of "The Seven". Affable, modest, and sincere; the ultimate Boy Scout, an American Treasure, and a God-fearing patriot.',
        :powers => 'Superhuman Strength, Invulnerability, Superhuman Speed, Superhuman Stamina, Heat Vision, X-Ray Vision, Superhuman Hearing, Flight'
    },
    { 
        :name => 'Queen Maeve',
        :image_url => 'https://m.media-amazon.com/images/G/01/pv_starlight/theboys-s2-8e73b1865817/SevenCarouselImage_1920x1080_QueenMaeve_aca2f50a._QL75_.jpg',
        :bio => 'A warrior, a feminist, a  humanitarian, and second most powerful member of "The Seven". The ultimate role model for little girls all over the world.',
        :powers => 'Superhuman Strength, Superhuman Leap, Superhuman Reflexes, Superhuman Agility, Superhuman Durability, Superhuman Stamina, Enhanced Accuracy/Sight, Martial Arts'
    },
    { 
        :name => 'Stormfront',
        :image_url => 'https://m.media-amazon.com/images/G/01/pv_starlight/theboys-s2-8e73b1865817/SevenCarouselImage_1920x1080_Stormfront_dfc71e1f._QL75_.jpg',
        :bio => 'Newest addition to the Seven. Edgy Supe from Portland. Strong advocate for more superheroes being made in order to combat the threat the nation faces from "Super-terrorists". Shoutout to my loyal "Stormchasers"!',
        :powers => 'Plasma Manipulation, Flight, Superhuman Durability, Superhuman Strength'
    },
    { 
        :name => 'Starlight',
        :image_url => 'https://m.media-amazon.com/images/G/01/pv_starlight/theboys-s2-8e73b1865817/SevenCarouselImage_1920x1080_Starlight_5858250f._QL75_.jpg',
        :bio => 'The girl next door with superpowers. As "The Defender of Des Moines", all I ever wanted to do is save the world. And while a lot of people say that as a corny catchphrase, I actually mean it. Getting selected to join "The Seven" was a real dream come true.',
        :powers => 'Energy Blasts, Electricity Absorption, Bioluminescence, Superhuman Strength, Superhuman Durability'
    },
    { 
        :name => 'A-Train',
        :image_url => 'https://m.media-amazon.com/images/G/01/pv_starlight/theboys-s2-8e73b1865817/SevenCarouselImage_1920x1080_ATrain_f55a4756._QL75_.jpg',
        :bio => 'The fastest man in the world. A speedster who used to be a part of a team known as "Teenage Kix", now a member of "The Seven". I\'ll do whatever it takes to remain in "The Seven".',
        :powers => 'Superhuman Speed, Accelerated Reflexes, Superhuman Strength, Superhuman Durability'
    },
    { 
        :name => 'Black Noir',
        :image_url => 'https://m.media-amazon.com/images/G/01/pv_starlight/theboys-s2-8e73b1865817/SevenCarouselImage_1920x1080_BlackNoir_133138bf._QL75_.jpg',
        :bio => 'Superpowered ninja; silent, stealthy, and enigmatic. Trained with a master sensei to become a death dealer. Criminals run in terror at the mere mention of my name.',
        :powers => 'Superhuman Strength, Superhuman Durability, Superhuman Hearing, Superhuman Agility, Martial Arts, Music Skills'
    },
    { 
        :name => 'The Deep',
        :image_url => 'https://m.media-amazon.com/images/G/01/pv_starlight/theboys-s2-8e73b1865817/SevenCarouselImage_1920x1080_TheDeep_237edc42._QL75_.jpg',
        :bio => '"Lord of the Seven Seas", The Seven\'s token aquatic Superhero, and Voughts social media darling. Thanks for the 4 million hits a day you guys! Love to all the sea creatures out there! I hear you!',
        :powers => 'Aquatic Telepathy, Enhanced Strength, Enhanced Durability, Aquatic and Air Respiration, Enhanced Swimming'
    }
]
the_seven.each { |supe| Supe.create(supe) }


russ = User.create(username: "Russell", password: "1234", role: 1, image_url: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/106142986_10223367819242454_9193473975357504231_o.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_ohc=niayp9RbdIYAX-9dyuQ&_nc_ht=scontent-lga3-1.xx&oh=967cfd3ef0444e040ce6b65cfd4ba142&oe=5F7E6CB3')
hughie = User.create(username: "Hughie", password: "1234", role: 0, image_url: 'https://cdn.collider.com/wp-content/uploads/2018/10/the-boys-simon-pegg-jack-quaid-social.jpg')

UserSupe.create!(user_id: russ.id, supe_id: Supe.second_to_last.id)
UserSupe.create!(user_id: russ.id, supe_id: Supe.second.id)
UserSupe.create!(user_id: russ.id, supe_id: Supe.third.id)
UserSupe.create!(user_id: hughie.id, supe_id: Supe.fourth.id)
UserSupe.create!(user_id: hughie.id, supe_id: Supe.fifth.id)
UserSupe.create!(user_id: hughie.id, supe_id: Supe.first.id)


p1 = Product.create!(name: "The Deep's Kirei Shoyu", description: "Straight from the depths!", price: 3)
p2 = Product.create!(name: "Startlight Sparkle Makeup", description: "Be camera ready just like Starlight!", price: 15)
p3 = Product.create!(name: "Homelander Figure", description: "Only says 'You guys are the real heroes!'", price: 18)
p4 = Product.create!(name: "Queen Maeve Crown", description: "Be the Queen you were meant to be!", price: 45)
p5 = Product.create!(name: "Black Noir's Teddy Bear", description: "Signed by Black Noir himself!", price: 10)
p6 = Product.create!(name: "A-Train Sneakers", description: "Run as fast as A-train and look just as good!", price: 120)
p7 = Product.create!(name: "Stun Gun 3000 by Stormfront", description: "Electrocute Bad Guys like Stormfront!", price: 775)
p8 = Product.create!(name: "Compound V", description: "This isn't supposed to be up here.", price: 1000000000000)


Cart.create!(user_id: russ.id, product_id: p1.id)
Cart.create!(user_id: russ.id, product_id: p7.id)
Cart.create!(user_id: russ.id, product_id: p3.id)
Cart.create!(user_id: russ.id, product_id: p5.id)
Cart.create!(user_id: hughie.id, product_id: p2.id)
Cart.create!(user_id: hughie.id, product_id: p8.id)

Event.create!(title: "Swim with The Deep!", location: "Greepoint, Brooklyn", date: "2021-02-03 06", cost: 100, supe_id: Supe.last.id)
Event.create!(title: "Hanging with Homelander", location: "Yankee Stadium, Bronx, NY", date: "2021-07-04 13", cost: 400, supe_id: Supe.first.id)
Event.create!(title: "Tea Time with Black Noir", location: "Brooklyn Botanical Garden", date: "2021-06-21 16", cost: 300, supe_id: Supe.second_to_last.id)
Event.create!(title: "Pray with Starlight", location: "St. Patricks Cathedral, NY", date: "2021-04-04 9", cost: 450, supe_id: Supe.fourth.id)