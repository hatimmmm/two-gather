categories = [
  { name: "Club" },
  { name: "Human" },
  { name: "Alien" },
  { name: "Robot" },
  { name: "Carl" },
  { name: "Weirdos" },
  { name: "Tech" },
  { name: "Literary" },
  { name: "Stalking" },
  { name: "Farming" },
  { name: "Games" },
  { name: "Crafts" },
  { name: "Organ Harvesting" },
  { name: "Music" },
  { name: "Photography" },
  { name: "Culinary" },
  { name: "Flashmobs" },
  { name: "Arts" },
  { name: "Media" },
  { name: "Cannibalism" },
  { name: "Sports" },
  { name: "Fashion" },
  { name: "Support" },
  { name: "Volunteering" },
  { name: "Legally dubious" },
  { name: "Nature" },
  { name: "Academic" },
  { name: "Outing" },
  { name: "Drugs" },
  { name: "Hate" },
  { name: "Larping" },
  { name: "Theft" }
]

categories.each do |category|
  Category.create!(category)
  puts "Created #{category[:name]} category"
end


