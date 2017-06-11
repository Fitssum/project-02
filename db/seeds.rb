# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Station.destroy_all
Bike.destroy_all
User.destroy_all

darwin = Station.create(station_name:"Darwin Bikeshares", location:"34982 Darwin Way", photo_url:"http://i.imgur.com/B6FMsBP.jpg")
abc = Bike.create(serial_no:"sn426972747", bike_type:"bmx", model:"Tern", station:darwin)
mcGilvary = User.create(name:"Blondell McGilvary", membership:"annual", address:"9394 Calypso Center")

mcGilvary_abc = UserBike.create(user:mcGilvary, bike:abc, date_rented: "2017-06-11 12:37:00.757182-04", isReturned: false)
