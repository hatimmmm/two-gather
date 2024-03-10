# User.create!({
#   first_name: "Human",
#   last_name: "User",
#   email: "johndoe@gmail.com",
#   password: "blabla",
#   password_confirmation: "blabla",
#   bio: "I am made of so much blood and organic tissue.",
# })

# User.create!({
#   first_name: "Robot",
#   last_name: "User",
#   email: "beepboop@gmail.com",
#   password: "blabla",
#   password_confirmation: "blabla",
#   bio: "There are so many cables inside me.",
# })

# User.create!({
#   first_name: "Alien",
#   last_name: "User",
#   email: "xenomorph@gmail.com",
#   password: "blabla",
#   password_confirmation: "blabla",
#   bio: "Stop asking me if I'm green.",
# })

# User.create!({
#   first_name: "Barney",
#   last_name: "Stinson",
#   email: "legen-dary@gmail.com",
#   password: "blabla",
#   password_confirmation: "blabla",
#   bio: "It's not legendary, unless your Teds are there to see it.",

# })

# User.create!({
#   first_name: "Banned",
#   last_name: "User ",
#   email: "banned@gmail.com",
#   password: "blabla",
#   password_confirmation: "blabla",
#   bio: "I like smells.",
# })

# User.create!({
#   first_name: "Literally",
#   last_name: "just a rat",
#   email: "ratboy@gmail.com",
#   password: "blabla",
#   password_confirmation: "blabla",
#   bio: "No i will not cook for you.",
# })

# User.create!({
#   first_name: "Just",
#   last_name: "juan",
#   email: "justjuan@gmail.com",
#   password: "blabla",
#   password_confirmation: "blabla",
#   bio: "Juan.",
# })

# User.create!({
#                first_name: "Carl",
#                last_name: "Carl",
#                email: "carl@gmail.com",
#                password: "carlcarl",
#                password_confirmation: "carlcarl",
#                bio: "Carl",
#              })
USERS = [
  {
    first_name: "Human",
    last_name: "User",
    email: "johndoe@gmail.com",
    password: "blabla",
    password_confirmation: "blabla",
    bio: "I am made of so much blood and organic tissue.",
  },
  {
    first_name: "Robot",
    last_name: "User",
    email: "beepboop@gmail.com",
    password: "blabla",
    password_confirmation: "blabla",
    bio: "There are so many cables inside me.",
  },
  {
    first_name: "Alien",
    last_name: "User",
    email: "xenomorph@gmail.com",
    password: "blabla",
    password_confirmation: "blabla",
    bio: "Stop asking me if I'm green.",
  },
  {
    first_name: "Barney",
    last_name: "Stinson",
    email: "legen-dary@gmail.com",
    password: "blabla",
    password_confirmation: "blabla",
    bio: "It's not legendary, unless your Teds are there to see it.",
  },
  {
    first_name: "Banned",
    last_name: "User",
    email: "banned@gmail.com",
    password: "blabla",
    password_confirmation: "blabla",
    bio: "I like smells.",
  },
  {
    first_name: "Literally",
    last_name: "just a rat",
    email: "ratboy@gmail.com",
    password: "blabla",
    password_confirmation: "blabla",
    bio: "No i will not cook for you.",
  },
  {
    first_name: "Just",
    last_name: "juan",
    email: "justjuan@gmail.com",
    password: "blabla",
    password_confirmation: "blabla",
    bio: "Juan.",
  },
  {
    first_name: "Carl",
    last_name: "Carl",
    email: "carl@gmail.com",
    password: "carlcarl",
    password_confirmation: "carlcarl",
    bio: "Carl",
  },
]

USERS.each do |user|
  User.create!(user)
  puts "Created user: #{user[:first_name]} #{user[:last_name]}"
end

puts "#{User.count} users have spawned"
