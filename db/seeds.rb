# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Car.create(doors: 3, cylinders: 1, transmission:"auto", color:"blue", price: 1, name:"something a", dealership: 1)
Car.create(doors: 2, cylinders: 2, transmission:"dualclutch", color:"red", price: 2, name:"something b", dealership: 1)
Car.create(doors: 5, cylinders: 3, transmission:"sqeuantal", color:"green", price: 3, name:"something c", dealership: 1)
Car.create(doors: 2, cylinders: 4, transmission:"stick", color:"orange", price: 4, name:"something d ", dealership: 2)
Car.create(doors: 1, cylinders: 5, transmission:"dogleg", color:"black", price: 5, name:"something e", dealership: 2)
Car.create(doors: 6, cylinders: 6, transmission:"1 gear", color:"sliver", price: 6, name:"something f", dealership: 2)
Car.create(doors: 4, cylinders: 7, transmission:"e gear", color:"white", price: 7, name:"something g", dealership: 3)
Car.create(doors: 5, cylinders: 8, transmission:"flappy paddles", color:"3M vinal", price: 8, name:"something h ", dealership: 3)
Car.create(doors: 100, cylinders: 9, transmission:"manual", color:"roso corsa", price: 9, name:"something i ", dealership: 3)
Car.create(doors: 9, cylinders: 10, transmission:"its broken", color:"world rally blue", price: 10, name:"something j", dealership: 4)


Dealership.create(name:"this is my first dealership", address:"the first address")
Dealership.create(name:"this is my second dealership", address:"the second address")
Dealership.create(name:"this is my first dealership", address:"the third address")
Dealership.create(name:"this is my first dealership", address:"the fourth address")



Testdrife.create(test_drive_date: )

#working on my seed file 