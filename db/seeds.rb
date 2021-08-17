# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'


User.create([
  email: 's.hawkins@googlemail.com',
  encrypted_password: "Password1234",
  user_name: 'shawks',
  first_name: 'Sam',
  last_name: 'Hawkins',
  address: '35 Langview Drive, San Francisco, USA, 134245',
  phone_number: '+1 417 234 1123',
])




meals = ['Italien', 'Greek', 'French', 'American', 'British']

file = URI.open()
meal = Meal.create([
  meal_name: '',
  category: meals[ran_number],
  description: ,
  user_id:
  ])
  meal.photo.attach(file)

file = URI.open()
meal = Meal.create([
  meal_name: ,
  category: meals[ran_number],
  description: ,
  user_id:
  ])
  meal.photo.attach(file)
