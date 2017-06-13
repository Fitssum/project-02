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
UserBike.destroy_all


darwin = Station.create(station_name:"Darwin Bikeshares Station", location:"34982 Darwin Way", photo_url:"http://i.imgur.com/DvAJYjq.png")
green = Station.create(station_name:"Green Bikeshares Station", location:"2469 Green Ridge Road", photo_url:"http://i.imgur.com/DvAJYjq.png")
elka = Station.create(station_name:"Elka Bikeshares Station", location:"5145 Elka Circle", photo_url:"http://i.imgur.com/DvAJYjq.png")
bunker = Station.create(station_name:"Bunker Hill Bikeshares Station", location:"2889 Bunker Hill Circle", photo_url:"http://i.imgur.com/DvAJYjq.png")
holy = Station.create(station_name:"Holy Cross Bikeshares Station", location:"80863 Holy Cross Center", photo_url:"http://i.imgur.com/DvAJYjq.png")
cambridge = Station.create(station_name:"Cambridge Bikeshares Station", location:"362 Cambridge Terrace", photo_url:"http://i.imgur.com/DvAJYjq.png")

abc = Bike.create(serial_no:"878-30-9745", bike_type:"CYCLOCROSS", model:"Tern model", station:darwin)
bcd = Bike.create(serial_no:"107-31-9682", bike_type:"CYCLOCROSS", model:"Tern model", station:darwin)
cde = Bike.create(serial_no:"147-53-2862", bike_type:"CYCLOCROSS", model:"Tern model", station:darwin)
deff = Bike.create(serial_no:"267-91-6287", bike_type:"CYCLOCROSS", model:"Tern model", station:darwin)
efg = Bike.create(serial_no:"121-09-2696", bike_type:"CYCLOCROSS", model:"Tern model", station:darwin)
fgh = Bike.create(serial_no:"803-11-0625", bike_type:"MOUNTAIN", model:"Terrot model", station:green)
ghi = Bike.create(serial_no:"237-93-2370", bike_type:"MOUNTAIN", model:"Terrot model", station:green)
hij = Bike.create(serial_no:"574-01-1738", bike_type:"MOUNTAIN", model:"Terrot model", station:green)
ijk = Bike.create(serial_no:"501-60-0844", bike_type:"MOUNTAIN", model:"Terrot model", station:green)
jkl = Bike.create(serial_no:"999-92-9427", bike_type:"MOUNTAIN", model:"Terrot model", station:green)
klm = Bike.create(serial_no:"443-99-5829", bike_type:"RACING", model:"Thomas model", station:elka)
lnm = Bike.create(serial_no:"350-01-8955", bike_type:"RACING", model:"Thomas model", station:elka)
nmo = Bike.create(serial_no:"656-88-3052", bike_type:"RACING", model:"Thomas model", station:elka)
mno = Bike.create(serial_no:"438-58-7729", bike_type:"RACING", model:"Thomas model", station:elka)
nop = Bike.create(serial_no:"534-13-3048", bike_type:"RACING", model:"Thomas model", station:elka)
opq = Bike.create(serial_no:"483-08-4225", bike_type:"TOURING", model:"Thorn model", station:bunker)
pqr = Bike.create(serial_no:"679-02-9172", bike_type:"TOURING", model:"Thorn model", station:bunker)
qrs = Bike.create(serial_no:"396-85-5314", bike_type:"TOURING", model:"Thorn model", station:bunker)
rst = Bike.create(serial_no:"997-73-6304", bike_type:"TOURING", model:"Thorn model", station:bunker)
stu = Bike.create(serial_no:"215-48-7524", bike_type:"TOURING", model:"Thorn model", station:bunker)
tuv = Bike.create(serial_no:"389-54-5046", bike_type:"HYBRID", model:"Time model", station:holy)
uvw = Bike.create(serial_no:"448-38-3063", bike_type:"HYBRID", model:"Time model", station:holy)
vwx = Bike.create(serial_no:"527-95-9864", bike_type:"HYBRID", model:"Time model", station:holy)
wxy = Bike.create(serial_no:"616-89-0215", bike_type:"HYBRID", model:"Time model", station:holy)
xyz = Bike.create(serial_no:"137-69-2064", bike_type:"HYBRID", model:"Time model", station:holy)
yza = Bike.create(serial_no:"465-56-3401", bike_type:"CRUISER", model:"Titus model", station:cambridge)
zab = Bike.create(serial_no:"614-34-3301", bike_type:"CRUISER", model:"Titus model", station:cambridge)
zbc = Bike.create(serial_no:"654-15-3183", bike_type:"CRUISER", model:"Titus model", station:cambridge)
zcd = Bike.create(serial_no:"435-79-3491", bike_type:"CRUISER", model:"Titus model", station:cambridge)
zde = Bike.create(serial_no:"262-25-2649", bike_type:"CRUISER", model:"Titus model", station:cambridge)

croney = User.create(name:"Giraud Croney", membership:"annual", address:"61658 Clarendon Park")
barhims = User.create(name:"Davida Barhims", membership:"annual", address:"5263 Morrow Drive")
goulborn = User.create(name:"Ardyth Goulborn", membership:"annual", address:"83616 Pearson Terrace")

mcGilvary_abc = UserBike.create(user:mcGilvary, bike:abc, date_rented: "2017-06-11 12:37:00.757182-04", isReturned: false)
