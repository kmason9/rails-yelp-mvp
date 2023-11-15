puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category:"belgian"}
mon_plaisir =  {name: "Mon Plaisir", address: "56A Shoreditch High St, London E1 6PQ", category:"french"}
captain_flints = {name: "Captain Flint's", address: "Fore Street, Salcombe", phone_number: "07933 592836", category:"italian"}
oka = {name: "Oka", address: "Broadway Market, London Fields", phone_number: "07933 56666", category:"japanese"}
ola_china = {name: "Ola China", address: "Marques de Pombal", category:"chinese"}

[dishoom, mon_plaisir, captain_flints, oka, ola_china].each do |attributes|
  restaurant = Restaurant.create!(attributes)
puts "Created #{restaurant.name}"
end

#instead of create can do .new then .save
