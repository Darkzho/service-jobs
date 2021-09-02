# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning up database..."
Booking.destroy_all
Service.destroy_all
User.destroy_all
puts "Database cleaned"
puts "Seeding"

# User seed 
file1 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1622559610/cwgknbzxa3fio0ulgxod.jpg')
e = User.create(email: "etorres@mail.com", password: "123456", first_name: "Emmanuele", last_name: "Torres", address: "puerto montt", owner: true)
e.photo.attach(io: file1, filename: 'nes.png', content_type: 'image/png')

file2 = URI.open('https://avatars.githubusercontent.com/u/84780725?v=4')
c = User.create(email: "ccisterna@mail.com", password: "123456", first_name: "Cristobal", last_name: "Cisterna", address: "Mexico", owner: true)
c.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

file3 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1622559610/cwgknbzxa3fio0ulgxod.jpg')
m = User.create(email: "mpizarro@mail.com", password: "123456", first_name: "Manuel", last_name: "Pizarro", address: "punta arenas", owner: true)
m.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

file4 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1622559610/cwgknbzxa3fio0ulgxod.jpg')
v = User.create(email: "vjara@mail.com", password: "123456", first_name: "Victor", last_name: "Jara", address: "Arica", owner: true)
v.photo.attach(io: file4, filename: 'nes.png', content_type: 'image/png')

file5 = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1622559610/cwgknbzxa3fio0ulgxod.jpg')
f = User.create(email: "fake@mail.com", password: "123456", first_name: "fake", last_name: "user", address: "china", owner: false)
f.photo.attach(io: file5, filename: 'nes.png', content_type: 'image/png')

3.times do |a|
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
  a = Service.create(title: ["Reparación de cañerías", "Reparación de baño", "Instalación de calefont", "Instalacion de ducha"].sample,
              description: ["Incluye materiales", "No incluye materiales"].sample,
              category: "gasfiteria",
              price: [15000, 20000, 30000].sample,
              user_id: e.id)
              a.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end           

# Services seed
 3.times do |b|
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
  b = Service.create(title: ["Reparación de muebles", "Construccion de comedor", "Reparacion estructural de casa", "Recambio de revestimiento"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "No incluye materiales"].sample,
              category: "carpinteria",
              price: [55000, 60000, 120000].sample,
              user_id: v.id)
              b.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end

3.times do |d|
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
  d = Service.create(title: ["Instalación electrica domiciliaria", "Reparación eléctrica domiciliaria", "Instalacion luminarias exterior", "Extensión de red electrica"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "No incluye materiales", "Trabajo de acuerdo a plano eléctrico y tramitacion"].sample,
              category: "electricidad",
              price: [40000, 70000, 90000].sample,
              user_id: c.id)
              d.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end

3.times do |f|
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
  f = Service.create(title: ["Limpieza de exteriores", "Limpieza de interior", "Lavado de fachada", "Limpieza de canaletas"].sample,
              description: ["Incluye recoleccion y disposicion de residuos", "Incluye insumos y recoleccion de residuos"].sample,
              category: "limpieza",
              price: [15000, 10000, 20000].sample,
              user_id: m.id)
              f.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end

2.times do |g|
  file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
  g = Service.create(title: ["Pintura de fachada", "Pintura interior", "Pintura de techo"].sample,
              description: ["Incluye limpieza y retape, no incluye pintura", "Incluye limpieza, retape, reparacion y pintura"].sample,
              category: "pintura",
              price: [45000, 60000, 50000].sample,
              user_id: m.id)
              g.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
end 

puts "Finishing"

