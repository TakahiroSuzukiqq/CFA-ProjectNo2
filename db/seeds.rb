# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(email: 'admin@email.com', password: '111111')
user1.add_role :admin

user2 = User.create!(email: 'user1@email.com', password: '111111')
user3 = User.create!(email: 'user2@email.com', password: '111111')
user4 = User.create!(email: 'supplier1@email.com', password: '111111')
user2 = User.create!(email: 'supplier2@email.com', password: '111111')
