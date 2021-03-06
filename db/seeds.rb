# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = User.create(first_name: "Jon", last_name: "B", username: "JonB")
b = Client.create(name: "Eureka")
c = Client.create(name: "LPI")
a.clients << b
a.clients << c

d = Address.create(street_number: "6", street_name: "Harvard Ave", city: "Boston", state: "MA", country: "USA", zip_code: "02155")
e = Address.create(street_name: "Sesame St")

b.address = d
c.address = e

f = Contact.create(first_name: "Billy", last_name: "Mays", phone_number: "555-555-5555", extension: "123")
b.contacts << f
