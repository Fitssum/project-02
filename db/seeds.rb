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

fitssum = User.create!(name:"Fitssum Haile", membership:"annual", address:"2904 Fairland rd.", email:"fitsum.wolde@gmail.com", status:"admin", password:"123456")
mcGilvary = User.create(name:"Blondell McGilvary", membership:"annual", address:"9394 Calypso Center", email:"bondell@yahoo.com", status:"user", password:"123456")
# croney = User.create(name:"Giraud Croney", membership:"annual", address:"61658 Clarendon Park", password:"123456")
# barhims = User.create(name:"Davida Barhims", membership:"annual", address:"5263 Morrow Drive", password:"123456")
# goulborn = User.create(name:"Ardyth Goulborn", membership:"annual", address:"83616 Pearson Terrace", password:"123456")
# goulborn = User.create(name:"Cyril Manginot", membership:"annual", address:"50 Amoth Parkway", password:"123456")
# mcGilvary = User.create(name:"Avrom Pulhoster", membership:"annual", address:"13543 Morning Parkway", password:"123456")
# mcGilvary = User.create(name:"Colette Janodet", membership:"annual", address:"5931 Truax Crossing", password:"123456")
# easterling = User.create(name:"Sasha Easterling", membership:"annual", address:"42227 Heffernan Park", password:"123456")
# kless = User.create(name:"Trumann Kless", membership:"annual", address:"77112 Debs Parkway", password:"123456")
# roofe = User.create(name:"Marquita Roofe", membership:"annual", address:"717 Morningstar Junction", password:"123456")
# jaksic = User.create(name:"Monty Jaksic", membership:"annual", address:"9186 Harbort Pass", password:"123456")
# folcarelli = User.create(name:"Simona Folcarelli", membership:"monthly", address:"7129 Walton Terrace", password:"123456")
# wordsley = User.create(name:"Derrek Wordsley", membership:"monthly", address:"5632 Boyd Drive", password:"123456")
# yvon = User.create(name:"Avery Yvon", membership:"monthly", address:"45147 Bunker Hill Parkway", password:"123456")
# sobey = User.create(name:"Lee Sobey", membership:"monthly", address:"66236 Park Meadow Way", password:"123456")
# toner = User.create(name:"Abdul Toner", membership:"monthly", address:"9733 Talisman Parkway", password:"123456")
# treadwell = User.create(name:"Rodger Treadwell", membership:"monthly", address:"5087 Dorton Center", password:"123456")
# mozes = User.create(name:"Mozes O'Hartnedy", membership:"monthly", address:"9 Tony Center", password:"123456")
# paulino = User.create(name:"Benedetta Paulino", membership:"monthly", address:"05 Golf Plaza", password:"123456")
# miles = User.create(name:"Ruthie Miles", membership:"monthly", address:"6 Logan Hill", password:"123456")
# audry = User.create(name:"Brennan Audry", membership:"monthly", address:"41 Village Junction", password:"123456")
# kliement = User.create(name:"Cindi Kliement", membership:"monthly", address:"7 Utah Drive", password:"123456")
# chaves = User.create(name:"Dougy Chaves", membership:"monthly", address:"9381 Becker Road", password:"123456")
# delacourt = User.create(name:"Britt Delacourt", membership:"monthly", address:"57 Merchant Court", password:"123456")
# delacourt = User.create(name:"Ebenezer Grassi", membership:"monthly", address:"61 Burrows Crossing", password:"123456")
# rudinger = User.create(name:"Desirae Rudinger", membership:"monthly", address:"8 Comanche Plaza", password:"123456")
# beynke = User.create(name:"Munmro Beynke", membership:"monthly", address:"7 Spaight Lane", password:"123456")
# livoir = User.create(name:"Josh Livoir", membership:"daily", address:"9421 Lyons Lane", password:"123456")
# haylor = User.create(name:"Ignaz Haylor", membership:"daily", address:"7429 Hauk Circle", password:"123456")
# leiden = User.create(name:"Leonerd Leiden", membership:"daily", address:"3 Laurel Parkway", password:"123456")
# sommerscales = User.create(name:"Kayne Sommerscales", membership:"daily", address:"4 Kennedy Way", password:"123456")
# garrud = User.create(name:"Margie Garrud", membership:"daily", address:"9202 3rd Junction", password:"123456")
# eberst = User.create(name:"Donnie Eberst", membership:"daily", address:"2 Quincy Crossing", password:"123456")
# greasley = User.create(name:"Sharity Greasley", membership:"daily", address:"63 Hovde Hill", password:"123456")
# firidolfi = User.create(name:"Florian Firidolfi", membership:"daily", address:"2 Reindahl Terrace", password:"123456")
# firidolfi = User.create(name:"Henrieta Rendell", membership:"daily", address:"51275 Huxley Place", password:"123456")
# lints = User.create(name:"Elroy Lints", membership:"daily", address:"6 High Crossing Court", password:"123456")
# balser = User.create(name:"Edithe Balser", membership:"daily", address:"438 Ludington Park", password:"123456")
# couche = User.create(name:"Kissiah Couche", membership:"daily", address:"2 2nd Crossing", password:"123456")
# satch = User.create(name:"Jessi Satch", membership:"daily", address:"88 Dorton Court", password:"123456")
# swindley = User.create(name:"Tobin Swindley", membership:"daily", address:"480 Cambridge Lane", password:"123456")
# dows = User.create(name:"Fallon Dows", membership:"daily", address:"6257 Spohn Way", password:"123456")
# mchugh = User.create(name:"Grethel McHugh", membership:"daily", address:"734 Hoepker Point", password:"123456")
# yarrell = User.create(name:"Alyss Yarrell", membership:"daily", address:"5 Loeprich Pass", password:"123456")
# hendrich = User.create(name:"Clywd Hendrich", membership:"daily", address:"81052 Macpherson Parkway", password:"123456")
# doleman = User.create(name:"Demetre Doleman", membership:"daily", address:"6274 Sunnyside Trail", password:"123456")
# slad = User.create(name:"Katalin Slad", membership:"daily", address:"740 Ruskin Lane", password:"123456")
# elward = User.create(name:"Leighton Elward", membership:"daily", address:"5 Eliot Parkway", password:"123456")
# bouchier = User.create(name:"Alexander Bouchier", membership:"daily", address:"7 Nelson Alley", password:"123456")
# koschek = User.create(name:"Margaretha Koschek", membership:"daily", address:"214 Old Shore Street", password:"123456")
