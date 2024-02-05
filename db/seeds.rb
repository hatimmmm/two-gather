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
              last_name: "User",
              email: "johndoe@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
              profile_picture: "https://images.theconversation.com/files/101304/original/image-20151109-29337-8av479.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip",
            })

User.create({
              first_name: "Trash",
              last_name: "Man",
              email: "johndoe@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
            })

puts "#{User.count} users created"

Club.create({
              name: "Human gathering",
              description: "We are carbon based organisms seeking to share oxygen and edible snacks around a hobby.",
              image_url: "https://thumbs.dreamstime.com/b/group-happy-people-showing-thumb-up-sign-over-white-background-51564090.jpg",
              public: true,
              owner_id: User.first.id,
            })

Club.create({
              name: "Robot gathering",
              description: "We're made of so many cables and we're looking for more.",
              image_url: "https://media.istockphoto.com/id/1207054027/photo/army-of-robots.jpg?s=612x612&w=0&k=20&c=0o6ylShM3C1-4zokG5gwsVqMgMtCCTAQdZOpKKVHKSw=",
              public: true,
              owner_id: User.first.id,
            })

Club.create({
  name: "Alien gathering",
  description: "Stop asking us to probe you.",
  image_url: "https://t3.ftcdn.net/jpg/01/94/29/16/360_F_194291600_DutFTKjA2YRgDW11EQ6caPojM93Ljmvm.jpg",
  public: true,
  owner_id: User.first.id,
})

# Club.create({
#               name: "Sabacc",
#               description: "The fairest game of chance on this side of the galaxy.",
#               image_url: "https://applemagazine.com/wp-content/uploads/2021/05/lando-twins-sabacc-solo-a-star-wars-story.jpg",
#               public: true
#             })

# Club.create({
#               name: "Robot gathering",
#               description: "We are robot organisms seeking to share oil and cows around the office electric socket.",
#               image_url: "",
#               public: true
#             })

Category.create({
                  name: "Human",
                })

Category.create({
                  name: "Robot",
                })

Category.create({
                  name: "Alien",
                })

ClubCategory.create({
                      club_id: Club.first.id,
                      category_id: Category.first.id,
                    })

ClubCategory.create({
  club_id: 2,
  category_id: 2,
})

ClubCategory.create({
  club_id: 3,
  category_id: 3,
})

Role.create({
  name: "member",
})

Role.create({
  name: "admin",
})

# Membership.create({
#   user_id: User.first.id,
#   club_id: Club.first.id,
#   role_id: Role.first.id,
# })

# Membership.create({
#   user_id: User.first.id,
#   club_id: Club.find(2).id,
#   role_id: Role.first.id,
# })

puts "#{Club.count} clubs created"
puts "#{Category.count} categories created"
puts "#{ClubCategory.count} ClubCategories created"
puts "#{Role.count} Roles created"
puts "#{Membership.count} Memberships created"
