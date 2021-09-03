# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require 'faker'

puts "Limpiando base de datos"
Review.destroy_all
Booking.destroy_all
Service.destroy_all
User.destroy_all
puts "Base de datos limpia"
puts "Ejecutando la seed"

emmanuele_photo = URI.open('https://avatars.githubusercontent.com/u/83293158?v=4')
victor_photo = URI.open('https://avatars.githubusercontent.com/u/76455801?v=4')
cristobal_photo = URI.open('https://avatars.githubusercontent.com/u/84780725?v=4')
manuel_photo = URI.open('https://avatars.githubusercontent.com/u/85199870?v=4')
fake_photo = URI.open('https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg')
jojo_photo = URI.open('https://cdn.pixabay.com/user/2017/06/01/00-25-05-714_250x250.jpg')
giogio_photo = URI.open('https://cdn.pixabay.com/user/2016/10/30/05-50-54-750_250x250.jpg')
bubu_photo = URI.open('https://cdn.pixabay.com/user/2021/08/27/19-38-00-707_250x250.jpg')

puts "Engendrando usuarios"
emmanuele = User.create(email: "etorres@mail.com", password: "123456", first_name: "Emmanuele", last_name: "Torres", owner: true, address: "Puerto Montt")
victor = User.create(email: "vjara@mail.com", password: "123456", first_name: "Victor", last_name: "Jara", owner: true, address: "Puerto Montt")
cristobal = User.create(email: "ccisterna@mail.com", password: "123456", first_name: "Cristobal", last_name: "Cisterna", owner: true, address: "Puerto Varas")
manuel = User.create(email: "mpizarro@mail.com", password: "123456", first_name: "Manuel", last_name: "Pizarro", owner: true, address: "Puerto Varas")
fake = User.create(email: "fake@mail.com", password: "123456", first_name: "Fake", last_name: "User", owner: false, address: "Puerto Varas")
jojo = User.create(email: "jojo@mail.com", password: "123456", first_name: "Jolyne", last_name: "Cujoh", owner: false, address: "Puerto Varas")
giogio = User.create(email: "giogio@mail.com", password: "123456", first_name: "Giorno", last_name: "Giovanna", owner: false, address: "Puerto Varas")
bubu = User.create(email: "bubu@mail.com", password: "123456", first_name: "Bruno", last_name: "Bucciarati", owner: false, address: "Calbuco")

puts "Adjuntando fotos de perfil"
emmanuele.photo.attach(io: emmanuele_photo, filename: 'emma.png', content_type: 'image/png')
victor.photo.attach(io: victor_photo, filename: 'victor.png', content_type: 'image/png')
cristobal.photo.attach(io: cristobal_photo, filename: 'cris.png', content_type: 'image/png')
manuel.photo.attach(io: manuel_photo, filename: 'manuel.png', content_type: 'image/png')
fake.photo.attach(io: fake_photo, filename: 'fake.png', content_type: 'image/png')
jojo.photo.attach(io: jojo_photo, filename: 'jojo.png', content_type: 'image/png')
giogio.photo.attach(io: giogio_photo, filename: 'giogio.png', content_type: 'image/png')
bubu.photo.attach(io: bubu_photo, filename: 'bubu.png', content_type: 'image/png')

puts "Creando servicios"

3.times do |a|
  gasfiteria1_photo = URI.open('https://images.unsplash.com/photo-1454988501794-2992f706932e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=753&q=80')
  a = Service.create(title: ["Reparación de cañerías", "Reparación de baño", "Instalación de calefont", "Instalacion de ducha", "Instalacion red exterior", "Instalación de cámaras"].sample,
  description: ["Incluye materiales", "No incluye materiales"].sample,
              category: "gasfiteria",
              price: [15000, 20000, 30000].sample,
              user_id: emmanuele.id)
              a.photo.attach(io: gasfiteria1_photo, filename: 'gasfiteria1.png', content_type: 'image/png')
            end
            
3.times do |b|
  carpinteria1_photo = URI.open('https://images.unsplash.com/photo-1626081063434-79a2169791b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80')
  b = Service.create(title: ["Reparación de muebles", "Construcción de comedor", "Reparación estructural de casa", "Recambio de revestimiento", "Instalación de pisos", "Ajuste de puertas", "Reparación de tejado"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "Trabajo en 2 semanas, no incluye materiales y presupuesto", "Trabajo en 3 semanas, trabajo seguro y confiable", "Trabajo en 2 semanas, calidad garantizada", "No incluye materiales"].sample,
              category: "carpinteria",
              price: [55000, 60000, 120000, 80000].sample,
              user_id: emmanuele.id)
              b.photo.attach(io: carpinteria1_photo, filename: 'carpinteria1.png', content_type: 'image/png')
            end
            
3.times do |c|
  gasfiteria2_photo = URI.open('https://images.pexels.com/photos/6419128/pexels-photo-6419128.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
  c = Service.create(title: ["Reparación de cañerías", "Reparación de baño", "Instalación de calefont", "Instalacion de ducha", "Instalacion red exterior", "Instalación de cámaras"].sample,
              description: ["Incluye materiales", "No incluye materiales"].sample,
              category: "gasfiteria",
              price: [15000, 20000, 30000, 40000, 45000].sample,
              user_id: victor.id)
              c.photo.attach(io: gasfiteria2_photo, filename: 'gasfiteria2.png', content_type: 'image/png')
end

3.times do |d|
  carpinteria2_photo = URI.open('https://images.pexels.com/photos/3637837/pexels-photo-3637837.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')
  d = Service.create(title: ["Reparación de muebles", "Construccion de comedor", "Reparacion estructural de casa", "Recambio de revestimiento", "Instalación de pisos", "Ajuste de puertas", "Reparación de tejado"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "Trabajo en 2 semanas, no incluye materiales y presupuesto", "Trabajo en 3 semanas, trabajo seguro y confiable", "Trabajo en 2 semanas, calidad garantizada", "No incluye materiales"].sample,
              category: "carpinteria",
              price: [55000, 60000, 80000, 100000, 120000].sample,
              user_id: victor.id)
              d.photo.attach(io: carpinteria2_photo, filename: 'carpinteria2.png', content_type: 'image/png')
end

3.times do |e|
  electricidad1_photo = URI.open('https://images.unsplash.com/photo-1544724569-5f546fd6f2b5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
  e = Service.create(title: ["Instalación electrica domiciliaria", "Reparación eléctrica domiciliaria", "Instalacion luminarias exterior", "Extensión de red electrica", "Intalacion de enchufes y luminaria en ampliaciones"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "Trabajo en 2 semanas, no incluye materiales y presupuesto", "No incluye materiales", "Trabajo de acuerdo a plano eléctrico y tramitacion"].sample,
              category: "electricidad",
              price: [40000, 50000, 70000, 90000].sample,
              user_id: cristobal.id)
              e.photo.attach(io: electricidad1_photo, filename: 'electricidad1.png', content_type: 'image/png')
end

2.times do |f|
  servicio_tecnico1_photo = URI.open('https://images.pexels.com/photos/3520694/pexels-photo-3520694.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
  f = Service.create(title: ["Reparación electrodomésticos", "Reparacion de artículos electrónicos", "Instalacion de sistemas de audio y video HIFI"].sample,
              description: ["Trabajo en 1 semana e incluye materiales", "Trabajo en 2 semanas, no incluye materiales y presupuesto", "No incluye materiales", "Trabajo de acuerdo a plano eléctrico y tramitacion"].sample,
              category: "servicio técnico",
              price: [40000, 50000, 70000, 90000].sample,
              user_id: cristobal.id)
              f.photo.attach(io: servicio_tecnico1_photo, filename: 'servicio1.png', content_type: 'image/png')
end
3.times do |g|
  limpieza1_photo = URI.open('https://images.unsplash.com/photo-1580256081112-e49377338b7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80')
  g = Service.create(title: ["Limpieza de exteriores", "Limpieza de interior", "Lavado de fachada", "Limpieza de canaletas"].sample,
              description: ["Incluye recoleccion y disposición de residuos", "Incluye insumos y recoleccion de residuos", "Trabajo garantizado en menos de 1 semana"].sample,
              category: "limpieza",
              price: [15000, 10000, 20000, 30000].sample,
              user_id: manuel.id)
              g.photo.attach(io: limpieza1_photo, filename: 'limpieza1.png', content_type: 'image/png')

end

2.times do |h|
  pintura1_photo = URI.open('https://images.pexels.com/photos/5691630/pexels-photo-5691630.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
  h = Service.create(title: ["Pintura de fachada", "Pintura interior", "Pintura de techo", "Pintura de rejas y cercos"].sample,
              description: ["Incluye limpieza y retape, no incluye pintura", "Incluye limpieza, retape, reparacion y pintura", "Trabajo profesional, incluye materiales, pintura y reaparaciones extras"].sample,
              category: "pintura",
              price: [45000, 60000, 50000, 55000].sample,
              user_id: manuel.id)
              h.photo.attach(io: pintura1_photo, filename: 'pintura1.png', content_type: 'image/png')
end
puts "Finishing"