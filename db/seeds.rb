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

CollectionType.create([
    { name: 'TOSEC-PIX', desc:"Images files" },
    { name: 'TOSEC-ISO', desc:"DVD/CD files" },
    { name: 'TOSEC-main', desc:"General purpose files" }
])

Datstatus.create([
    { name: 'INACTIVE', abbreviation: 'I', descStatus: 'Dat file is deprecated' },
    { name: 'ACTIVE', abbreviation: 'A', descStatus: 'Dat file will be added to next release' },
    { name: 'PENDING', abbreviation: 'P', descStatus: 'Dat file awaiting for moderation process to complete' },
    { name: 'OBSOLETE', abbreviation: 'O', descStatus: 'Dat file was substituted by a new one' },
    { name: 'UPLOADED', abbreviation: 'U', descStatus: 'Dat file awaiting for morderation process to begin' }
])


10.times do |n|
    Release.create([{ descRelease: "Release #{n}" }])
end

Route.create([
    { name: 'Systems', path: 'systems', priority: '3' },
    { name: 'SystemType', path: 'systems/types', priority: '6' },
    { name: 'Companies', path: 'companies', priority: '4' },
    { name: 'DatFiles', path: 'datfiles', priority: '2' },
    { name: 'Dat file status', path: 'datstatuses', priority: '7' },
    { name: 'Releases', path: 'releases', priority: '1' },
    { name: 'Collection Types', path: 'collection_types', priority: '5' },
    { name: 'Group Role', path: 'groles', priority: '99' },
    { name: 'Roles', path: 'roles', priority: '98' },
    { name: 'Routes', path: 'routes', priority: '97' },
    { name: 'Users', path: 'users', priority: '96' }
])

Role.create([
    { name: 'Administrator'},
    { name: 'Moderator'},
    { name: 'Publisher'}
])
User.create(id:0, username: 'nothing',       email: 'nothing@tosec.com', password: '123456', admin: 'false', mod: 'false', pub: 'false')
User.create(username: 'Administrator', email: 'root@tosec.com',  password: '123456', admin: 'true',  mod: 'false', pub: 'false')
User.create(username: 'Moderator',     email: 'mod@tosec.com',   password: '123456', admin: 'false', mod: 'true',  pub: 'false')
User.create(username: 'Publisher',     email: 'pub@tosec.com',   password: '123456', admin: 'false', mod: 'false', pub: 'true' )
User.create(username: 'User1',         email: 'user1@tosec.com', password: '123456', admin: 'false', mod: 'false', pub: 'false')
User.create(username: 'User2',         email: 'user2@tosec.com', password: '123456', admin: 'false', mod: 'false', pub: 'false')
User.create(username: 'nothing',       email: 'nothing@tosec.com', password: '123456', admin: 'false', mod: 'false', pub: 'false')

Grole.create([
    { user_id: '1', role_id: '1', route_id: '1'},
    { user_id: '1', role_id: '1', route_id: '2'},
    { user_id: '1', role_id: '1', route_id: '3'},
    { user_id: '1', role_id: '1', route_id: '4'},
    { user_id: '1', role_id: '1', route_id: '5'},
    { user_id: '0', role_id: '1', route_id: '6'},
    { user_id: '0', role_id: '1', route_id: '7'},
    { user_id: '0', role_id: '1', route_id: '8'},
    { user_id: '1', role_id: '1', route_id: '9'},
    { user_id: '1', role_id: '1', route_id: '10'},
    { user_id: '1', role_id: '1', route_id: '11'},
    { user_id: '0', role_id: '2', route_id: '1'},
    { user_id: '2', role_id: '2', route_id: '2'},
    { user_id: '2', role_id: '2', route_id: '3'},
    { user_id: '2', role_id: '2', route_id: '4'},    
    { user_id: '0', role_id: '3', route_id: '1'},
    { user_id: '3', role_id: '3', route_id: '2'},
    { user_id: '3', role_id: '3', route_id: '4'}
])

10.times do |n|
    Datfile.create([{ name: "dat #{n}" , readme: "dat #{n}", user_id: "1", system_id: "#{1+rand(5)}", datstatus_id: "#{1+rand(5)}", collection_type_id: "#{1+rand(3)}" }])
end
