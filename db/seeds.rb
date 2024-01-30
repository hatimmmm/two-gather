# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Let's clean up this place, shall we? "
puts "Ok ok we're scrubbing"
Club.destroy_all
User.destroy_all
Post.destroy_all

puts "Database is squeaky deeky clean :)"

User.create({
              first_name: "Human",
              last_name: "Doe",
              email: "johndoe@gmail.com",
              password: "blabla",
              password_confirmation: "blabla"
            })

puts "#{User.count} users created"

Club.create({
              name: "Human gathering",
              description: "We are human organisms seeking to share oxygen and edible snacks around a hobby.",
              image_url: "https://cdn.vox-cdn.com/thumbor/rE8qfP45-3lL3qSMx0nL4k6fZnY=/230x145:1575x1154/1400x1050/filters:focal(230x145:1575x1154):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/45894920/deathofcaesar.0.0.jpg",
              public: true
            })

Club.create({
              name: "Robot gathering",
              description: "We are robot organisms seeking to share oil and cows around the office electric socket.",
              image_url: "",
              public: true
            })

Club.create({
              name: "Sabacc",
              description: "We are robot organisms seeking to share oil and cows around the office electric socket.",
              image_url: "https://applemagazine.com/wp-content/uploads/2021/05/lando-twins-sabacc-solo-a-star-wars-story.jpg",
              public: true
            })

Club.create({
              name: "Robot gathering",
              description: "We are robot organisms seeking to share oil and cows around the office electric socket.",
              image_url: "",
              public: true
            })

puts "#{Club.count} clubs created"
