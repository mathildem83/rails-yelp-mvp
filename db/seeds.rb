# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"belgian", phone_number:"+447475592280")
puts "Created Dishoom"

Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category:"italian", phone_number:"+443036463354")
puts "Created Pizza East"

Restaurant.create!(name: "Sushi Bar", address: "35 rue tier, London E1 6PQ", category:"japanese", phone_number:"+447119727863")
puts "Created Sushi Bar"

Restaurant.create!(name: "China Buffet", address: "1 china town, London E1 6PQ", category:"chinese", phone_number:"+449802497915")
puts "Created China Buffet"

Restaurant.create!(name: "Frenchie", address: "65 rue bio, London E1 6PQ", category:"french", phone_number:"+447854152984")
puts "Created Frenchie"

puts "Finished! Created #{Restaurant.count} restaurants."
