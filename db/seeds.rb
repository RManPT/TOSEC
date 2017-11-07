# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
    System.create([{ name: "Sistema #{n}" ,abbreviation:"S#{n}", dateRelease:"1993-#{n+1}-#{n+1}"}])
end

10.times do |n|
    SystemsType.create([{ name: "SistemaT#{n}"}])
end

ReleaseType.create([
    {name: 'TOSEC-main', desc:"General purpose release"},
    {name: 'TOSEC-ISO', desc:"DVD/CD releases"},
    {name: 'TOSEC-PIX', desc:"Images release"}
])
