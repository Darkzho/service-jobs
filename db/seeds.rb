# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Agregando seed"

30.times do |i|
  i = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  service = Service.create(title: ["Reparación de cañerías", "Reparación de baño", "construcción de muebles", "Reparación equipos electrónicos", "Puntos eléctricos", "pintura a de casa a domicilio", "limpieza general"].sample,
                    description: Faker::TvShows::BigBangTheory.quote,
                    category: ["gasfiteria", "electricidad", "pintura", "carpinteria", "servicio técnico", "limpieza"].sample,
                    price: [2000, 5000, 10000, 15000, 20000, 25000, 30000].sample,
                    user_id: i.id)
end
puts "Terminando seed"
