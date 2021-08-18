# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning up database..."
Booking.destroy_all
Service.destroy_all
User.destroy_all
puts "Database cleaned"
puts "Seeding"

e = User.create(email: "etorres@mail.com", password: "123456", first_name: "Emmanuele", last_name: "Torres")
v = User.create(email: "vjara@mail.com", password: "123456", first_name: "Victor", last_name: "Jara")
c = User.create(email: "ccisterna@mail.com", password: "123456", first_name: "Cristobal", last_name: "Cisterna")
m = User.create(email: "mpizarro@mail.com", password: "123456", first_name: "Manue", last_name: "Pizarro")

3.times do |a|
  a = Service.create(title: ["Reparación de cañerías", "Reparación de baño", "Instalación de calefont", "Instalacion de ducha"].sample,
              description: ["Incluye materiales", "No incluye materiales"].sample,
              category: "gasfiteria",
              price: [15000, 20000, 30000].sample,
              user_id: e.id)
end

3.times do |b|
  b = Service.create(title: ["Reparación de muebles", "Construccion de comedor", "Reparacion estructural de casa", "Recambio de revestimiento"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "No incluye materiales"].sample,
              category: "carpinteria",
              price: [55000, 60000, 120000].sample,
              user_id: v.id)
end

3.times do |d|
  d = Service.create(title: ["Instalación electrica domiciliaria", "Reparación eléctrica domiciliaria", "Instalacion luminarias exterior", "Extensión de red electrica"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "No incluye materiales", "Trabajo de acuerdo a plano eléctrico y tramitacion"].sample,
              category: "electricidad",
              price: [40000, 70000, 90000].sample,
              user_id: c.id)
end

3.times do |f|
  f = Service.create(title: ["Limpieza de exteriores", "Limpieza de interior", "Lavado de fachada", "Limpieza de canaletas"].sample,
              description: ["Incluye recoleccion y disposicion de residuos", "Incluye insumos y recoleccion de residuos"].sample,
              category: "limpieza",
              price: [15000, 10000, 20000].sample,
              user_id: m.id)
end

2.times do |g|
  g = Service.create(title: ["Pintura de fachada", "Pintura interior", "Pintura de techo"].sample,
              description: ["Incluye limpieza y retape, no incluye pintura", "Incluye limpieza, retape, reparacion y pintura"].sample,
              category: "pintura",
              price: [45000, 60000, 50000].sample,
              user_id: m.id)
end
puts "Finishing"

