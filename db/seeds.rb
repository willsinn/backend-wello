# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create( username: "ws", password: "123456", name: "Will" )

Label.create(color:"green")
Label.create(color:"yellow")
Label.create(color:"orange")
Label.create(color:"red")
Label.create(color:"purple")
Label.create(color:"blue")

