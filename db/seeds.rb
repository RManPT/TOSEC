# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n| 
    SystemsType.create([{ name: [*('A'..'Z')].sample(8).join}]) 
end 

require 'nokogiri'
xml_file = File.read("app/assets/TOSEC Systems XML.xml")
doc = Nokogiri::XML.parse(xml_file)
doc.xpath("/companies/company").each do |company|
    i = Company.create({title:"#{company.xpath("name").text}", text:('A'..'Z').to_a.sample(8).join})
    company.xpath("systems/system/name").each do | system |
        System.create({ name: "#{system.text}" ,abbreviation:('a'..'z').to_a.sample(rand(3)+2).join.upcase,dateRelease:rand(35.years).seconds.ago, systemsType_id:rand(1...10), company_id:i.id}) 
    end
 end
 Datstatus.create([
     { name: 'Active', abbreviation: 'ACTV',descStatus: 'State Active' },
     { name: 'Desactive', abbreviation: 'DCTV',descStatus: 'State Desactive' },
     { name: 'Pending', abbreviation: 'PEND',descStatus: 'State Pending' }
])
  
CollectionType.create(name: 'TOSEC-PIX', desc:"Images files")
CollectionType.create(name: 'TOSEC-ISO', desc:"DVD/CD files")
CollectionType.create(name: 'TOSEC-main', desc:"General purpose files")
10.times do |n|
    Datfile.create([{ name: "dat #{n}" , readme: "dat #{n}", collection_type_id: "1"}])
end
