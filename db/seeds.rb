Company.destroy_all
Model.destroy_all
Driver.destroy_all
Vehicule.destroy_all
User.destroy_all

puts "seed reinitialized"

user = User.create!(email: "johndoe@mail.com", password: "secret")
puts "#{user.email} created!"

my_company = Company.create!(name: "VTC Luxe", address: "1, rue des Champs Elysées")
puts "#{my_company.name} created!"

model = Model.create!(name:"Tesla")
puts "#{model.name} model created!"

pilot = Driver.create!(firstname: "James", lastname: "Bond", phone: "06 01 23 45 78", company: my_company)
puts "#{pilot.firstname} pilot created!"

car = Vehicule.create!(registration: "JB007", km:"42.00", model: model, driver: pilot)
puts "#{car.registration} car created!"

model = Model.create!(name:"Audi")
puts "#{model.name} model created!"

pilot = Driver.create!(firstname: "Elon", lastname: "Musk", phone: "06 01 23 45 90", company: my_company)
puts "#{pilot.firstname} pilot created!"

car = Vehicule.create!(registration: "EM10001", km:"1000.00", model: model, driver: pilot)
puts "#{car.registration} car created!"

