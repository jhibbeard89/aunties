# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "hello"
# User Seeds
file = URI.open('https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg')
user = User.new(
  email: 's.hawkins@googlemail.com',
  password: "Password1234",
  first_name: 'Sam',
  last_name: 'Hawkins',
  address: '35 Langview Drive, San Francisco, USA, 134245',
  phone_number: '+1 417 234 1123',
  auntie: false
)
user.photo.attach(io: file, filename: 'shaws.jpg', content_type: 'image/jpg')
user.save

file = URI.open('https://randomuser.me/api/portraits/men/83.jpg')
user = User.new(
  email: 'acox@googlemail.com',
  password: "Password1234",
  first_name: 'Andrew',
  last_name: 'Cox',
  address: '12 Cook Av, San Francisco, USA, 134245',
  phone_number: '+1 417 234 1123',
  auntie: true
)
user.photo.attach(io: file, filename: 'acox.jpg', content_type: 'image/jpg')
user.save

file = URI.open('https://i.pinimg.com/originals/e8/b2/71/e8b271169214323595f5155a649884d2.jpg')
user = User.new(
  email: 'p.lain@googlemail.com',
  password: "Password1234",
  first_name: 'Pauline',
  last_name: 'Lane',
  address: 'The Range, Piearson Grove, San Francisco, USA, 134245',
  phone_number: '+1 417 234 1123',
  auntie: true
)
user.photo.attach(io: file, filename: 'plane.jpg', content_type: 'image/jpg')
user.save


file = URI.open('https://i.pinimg.com/originals/de/64/80/de64801f0275c1ab2ea5a9e2bb3ce7bc.jpg')
user = User.new(
  email: 'ismit@googlemail.com',
  password: "Password1234",
  first_name: 'India',
  last_name: 'Smith',
  address: 'Palm Road, San Francisco, USA, 134245',
  phone_number: '+1 417 234 1123',
  auntie: false
)
user.photo.attach(io: file, filename: 'ISmith.jpg', content_type: 'image/jpg')
user.save


file = URI.open('https://img.taste.com.au/PXvnKf8Y/taste/2016/11/spaghetti-bolognaise-104579-1.jpeg')
meal = Meal.new(
  meal_name: 'Homly Spaghetti',
  category: "Italien",
  description: "A lovely and homely spaghetti Bolognais",
  price: rand(4..12),
  quantity: rand(2..10),
  user: User.find(2)
  )
  meal.photo.attach(io: file, filename: 'spagbol.jpeg', content_type: 'image/jpeg')
  meal.save

  file = URI.open('https://food-images.files.bbci.co.uk/food/recipes/chicken_pie_24044_16x9.jpg')
meal = Meal.new(
  meal_name: 'Chicken pie',
  category: "British",
  description: "A traditional english chicken pie",
  price: rand(4..12),
  quantity: rand(2..10),
  user: User.find(3)
  )
  meal.photo.attach(io: file, filename: 'chickenPie.jpg', content_type: 'image/jpg')
  meal.save


  file = URI.open('https://static01.nyt.com/images/2021/01/15/dining/15COOKING-OLD-BEEF-STEW2/15COOKING-OLD-BEEF-STEW2-articleLarge-v2.jpg')
meal = Meal.new(
  meal_name: 'West Coast Beef Stew',
  category: "American",
  description: "A fine example of west coast cuisine in this west coast beef stew.",
  price: rand(4..12),
  quantity: rand(2..10),
  user: User.find(2)
  )
  meal.photo.attach(io: file, filename: 'beefstew.jpg', content_type: 'image/jpg')
  meal.save


# file = URI.open()
# meal = Meal.create([
#   meal_name: ,
#   category: meals[ran_number],
#   description: ,
#   user_id:
#   ])
#   meal.photo.attach(file)
