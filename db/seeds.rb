# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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


russ = User.create(username: "Russell", password: "1234", role: 1)
nancy = User.create(username: "Nancy", password: "1234")

p1 = Product.create!(name: "soysauce", description: "condiment", price: 2)
p2 = Product.create!(name: "makeup", description: "makeup", price: 4)
p3 = Product.create!(name: "toy", description: "toy", price: 5)

Cart.create!(user_id: russ.id, product_id: p1.id)
Cart.create!(user_id: russ.id, product_id: p2.id)
Cart.create!(user_id: russ.id, product_id: p3.id)
Cart.create!(user_id: nancy.id, product_id: p1.id)
Cart.create!(user_id: nancy.id, product_id: p3.id)