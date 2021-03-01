# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.destroy_all 
Game.destroy_all

mario_kart = Game.create name:"Mario Kart", rating:8, image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQolEwzaDG9hHdCGRLNNgvySF1MfvLfjKalpQ&usqp=CAU"
legend_of_zelda = Game.create name:"legend_of_zelda", rating:4, image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1tCyjK3VLKBMVAtnrWouHcct00sbnfRJngA&usqp=CAU"
sonic_the_hedgehog = Game.create name:"Sonic the Hedgehog", rating:10, image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiyo0jCVdN7hHy3eTfClUu7udWGiReE9uHxA&usqp=CAU"

mario = Character.create name:"Mario", age:38, game: mario_kart 
peach = Character.create name:"Peach", age:21, game: mario_kart 
bowser = Character.create name:"Bowser", age:12, game: mario_kart 
link = Character.create name:"Link", age:100, game: legend_of_zelda
zelda = Character.create name:"Zelda", age:28, game: legend_of_zelda
ganon = Character.create name:"Ganon", age:56, game: legend_of_zelda
sonic = Character.create name:"Sonic", age:8, game: sonic_the_hedgehog
tails = Character.create name:"Tails", age:6, game:sonic_the_hedgehog
knuckles = Character.create name:"Knuckles", age:12, game: sonic_the_hedgehog