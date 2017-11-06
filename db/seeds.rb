# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
    System.create(name: "Sistema #{n}")
end

ReleaseType.create(name: 'TOSEC-main', desc:"General purpose release")
ReleaseType.create(name: 'TOSEC-ISO', desc:"DVD/CD releases")
ReleaseType.create(name: 'TOSEC-PIX', desc:"Images release")


