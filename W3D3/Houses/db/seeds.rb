# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.create({address: '1585 Lakewood Hill Rd, Carlsbad CA'})
House.create({address: '5984 Lombard St, SF CA'})
House.create({address: '8 Milbrook Rd, Redlands CA'})

Person.create({name: 'Theo Obbard'}, {house_id: 1})
Person.create({name: 'Testy McTesterface'}, {house_id: 2})
