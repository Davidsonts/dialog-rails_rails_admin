# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do 
  uf = CS.states(:br).map do |key, value| key end
  uf = uf.sample
  User.create(
    name: Faker::Name.name, 
    year: Faker::Date.between(from: '1080-01-23', to: '2000-01-25'),
    sex: [:male, :female, :other].sample, 
    city: CS.cities(uf, :br).sample, 
    uf: uf
  )
end
