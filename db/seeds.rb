# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: "admintest@test.com", password: "asdfasdf", password_confirmation: "asdfasdf",
						     first_name: "JonAA", last_name: "SnowAA")
User.create(email: "test@test.com", password: "asdfasdf",password_confirmation: "asdfasdf",
						first_name: "Jon", last_name: "Snow")
