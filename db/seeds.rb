# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |apartment|
  Apartment.create(street:"J St.",
                   unit:"#{apartment}A",
                   city:"San Diego",
                   postalcode: 92126,
                   state:"CA",
                   country:"Djibouti",
                   manager_name:"Ari",
                   phone_number: "858-555-5555",
                   hours: "Monday-Friday 9AM-5PM")
end


                   puts "Apartment created"
