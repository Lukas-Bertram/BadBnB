# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(
  email: "test@test.com",
  password: "test@test.com"
)

Offer.create!(
  name: "Moldy mattress in Berlin",
  description: "This is a description for Offer 1.",
  address: "123 Main St, City, Country",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Gloomy basement in Berlin",
  description: "Descend into our gloomy basement, where the light barely reaches and the air is thick with mystery. Enjoy the authentic Berlin underground experience with a hint of dampness and a touch of eeriness.",
  address: "Kreuzbergstraße 1, 10965 Berlin",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Rusty caravan in Berlin",
  description: "Stay in our rusty caravan, parked in a questionable spot and offering a true nomadic vibe. Perfect for those who love the sound of rain on metal and don't mind a few leaks.",
  address: "Tempelhofer Feld, 12099 Berlin",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Dusty attic in London",
  description: "Get cozy in our dusty attic, complete with cobwebs and a collection of old newspapers from the '90s. Perfect for those who appreciate vintage dust and eerie creaking noises at night.",
  address: "221B Baker St, London NW1 6XE, UK",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Creaky basement in New York",
  description: "Experience the thrill of staying in a creaky basement, complete with mysterious stains and flickering lights. Ideal for those who enjoy an adventure every time they go to the bathroom.",
  address: "456 Elm St, New York, NY 10001, USA",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Damp cellar in Dublin",
  description: "Stay in our charmingly damp cellar, where the air is always humid and the smell is always musty. Perfect for those who want to feel close to the earth (literally).",
  address: "789 O'Connell St, Dublin, Ireland",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Leaky shack in Amsterdam",
  description: "Enjoy the rustic charm of our leaky shack, with water dripping from the ceiling and a floor that’s always slightly damp. Great for those who love the sound of rain indoors.",
  address: "101 Canal St, Amsterdam, Netherlands",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Noisy flat in Rome",
  description: "Immerse yourself in the vibrant sounds of Rome with our noisy flat, where the traffic never stops and the neighbors love to party. Perfect for night owls and sound enthusiasts.",
  address: "123 Piazza Navona, Rome, Italy",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Cramped studio in Tokyo",
  description: "Experience the true Tokyo lifestyle with our cramped studio, where you can touch all four walls without moving your feet. Ideal for minimalists and contortionists.",
  address: "456 Shibuya, Tokyo, Japan",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Sketchy alley in Bangkok",
  description: "Stay in our sketchy alley accommodation, featuring random passersby, occasional street food aromas, and a unique sense of adventure. Great for thrill-seekers and brave souls.",
  address: "789 Sukhumvit Rd, Bangkok, Thailand",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Rundown hostel in Barcelona",
  description: "Experience the essence of Barcelona with our rundown hostel, complete with squeaky beds, questionable plumbing, and a lively mix of international guests.",
  address: "101 La Rambla, Barcelona, Spain",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Funky garage in San Francisco",
  description: "Stay in our funky garage, where the aroma of oil and the sound of nearby traffic create a unique ambiance. Perfect for car enthusiasts and unconventional travelers.",
  address: "123 Haight St, San Francisco, CA 94117, USA",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Grimy loft in Sydney",
  description: "Get comfortable in our grimy loft, with its sticky floors, dusty corners, and a mysterious odor that never quite goes away. Ideal for the truly adventurous traveler.",
  address: "456 George St, Sydney NSW 2000, Australia",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Musty cave in Athens",
  description: "Retreat to our musty cave, where you can enjoy the authentic scent of damp rock and the soothing sounds of dripping water. Perfect for those who want to experience the ancient charm of Greece.",
  address: "Acropolis Hill, Athens, Greece",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Rickety treehouse in Nairobi",
  description: "Stay in our rickety treehouse, where the floorboards creak with every step and the view is partially obstructed by thick foliage. Ideal for nature lovers and thrill-seekers.",
  address: "Karura Forest, Nairobi, Kenya",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Soggy hut in Rio de Janeiro",
  description: "Enjoy the tropical experience in our soggy hut, where the humidity is high and the roof leaks just enough to keep you cool. Perfect for those who love the rainforest atmosphere.",
  address: "Favela Santa Marta, Rio de Janeiro, Brazil",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Claustrophobic pod in Hong Kong",
  description: "Experience the bustling city of Hong Kong from our claustrophobic pod, where space is a luxury and the walls feel like they're closing in. Great for minimalists and space adventurers.",
  address: "123 Nathan Rd, Hong Kong",
  price: 100.0,
  availability: true,
  user_id: 1
)

Offer.create!(
  name: "Windy tent in Reykjavik",
  description: "Brave the elements in our windy tent, pitched in the heart of Reykjavik. Feel the fresh Icelandic breeze as it howls through the night, giving you an authentic outdoor experience.",
  address: "Laugavegur 1, 101 Reykjavik, Iceland",
  price: 100.0,
  availability: true,
  user_id: 1
)
