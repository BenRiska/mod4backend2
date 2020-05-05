# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "ben", email: "hi", password: "hi", balance: 0)
User.create(name: "bryn", email: "bye", password: "bye", balance: 4000)

Currency.create(name: "Bitcoin")
Currency.create(name: "Ethereum")

Transaction.create(date: DateTime.now, amount: 300, status: "recieved", currency: Currency.find(1), user: User.find(1))
Transaction.create(date: DateTime.now, amount: 7000, status: "recieved", currency: Currency.find(2), user: User.find(2))
Transaction.create(date: DateTime.now, amount: 400, status: "recieved", currency: Currency.find(2), user: User.find(2))
Transaction.create(date: DateTime.now, amount: 3500, status: "Sent", currency: Currency.find(1), user: User.find(2))
Transaction.create(date: DateTime.now, amount: 2200, status: "recieved", currency: Currency.find(2), user: User.find(2))
Transaction.create(date: DateTime.now, amount: 6500, status: "Sent", currency: Currency.find(1), user: User.find(2))