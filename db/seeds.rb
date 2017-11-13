# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n| 
    SystemsType.create([{ name: "Consola #{n}"}]) 
end 
10.times do |n|
    System.create([{ name: "PlayStation #{n}" ,abbreviation:"PS#{n}",company:"Teste122" ,dateRelease:"1993-#{n+1}-#{n+1}", systemsType_id:"1"}]) 
end 


CollectionType.create(name: 'TOSEC-PIX', desc:"Images files")
CollectionType.create(name: 'TOSEC-ISO', desc:"DVD/CD files")
CollectionType.create(name: 'TOSEC-main', desc:"General purpose files")
