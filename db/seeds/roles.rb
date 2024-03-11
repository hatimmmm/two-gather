roles = [
  { name: "member" },
  { name: "admin" },
]

roles.each do |role|
  Role.create!(role)
  puts "Created #{role[:name]} role"
end
