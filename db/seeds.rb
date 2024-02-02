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
Category.destroy_all
Comment.destroy_all

puts 'Database is squeaky deeky clean :)'
puts '...................................................'
puts 'Users being conceived...'

User.create({
              first_name: "Human",
              last_name: "User",
              email: "johndoe@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
              bio: "I am made of so much blood and organic tissue."
            })

User.create({
              first_name: "Robot",
              last_name: "User",
              email: "robotdoe@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
              bio: "There are so many cables inside me."
            })

User.create({
              first_name: "Alien",
              last_name: "User",
              email: "paul@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
              bio: "Stop asking me if I'm green."
            })

User.create({
              first_name: "Trash",
              last_name: "Man",
              email: "trashman@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
              bio: "I'm the Trash Man! I come out, I throw trash all over the- all over the ring! And then I start eatin' garbage! And then I pick up the trash can, and I bash the guy on the head."
            })
User.create({
              first_name: "Mayonaise",
              last_name: "On an escalator",
              email: "seeyoulater@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
              bio: "Mayonnaise on an escalator. I'm going upstairs so see you later"
            })

User.create({
              first_name: "Barney",
              last_name: "Stinson",
              email: "legen-dary@gmail.com",
              password: "blabla",
              password_confirmation: "blabla",
              bio: "It's not legendary, unless your Teds are there to see it."

})

puts "#{User.count} users have spawned"

Club.create!({
              name: "Human gathering",
              description: "We are human organisms seeking to share oxygen and edible snacks around a hobby.",
              image_url: "https://cdn.vox-cdn.com/thumbor/rE8qfP45-3lL3qSMx0nL4k6fZnY=/230x145:1575x1154/1400x1050/filters:focal(230x145:1575x1154):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/45894920/deathofcaesar.0.0.jpg",
              public: true,
              owner_id: 1
            })

Club.create!({
              name: "Robot gathering",
              description: "Looking to share oil and cows around the office electric socket.",
              image_url: "https://y.yarn.co/326b4f32-8d7c-416c-bf79-5d1072da45f1_screenshot.jpg",
              public: true,
              owner_id: 2
            })

Club.create!({
              name: "Not Drugs",
              description: "We do not deal with drugs. They are bad.",
              image_url: "",
              public: true,
              owner_id: 1
            })

Club.create!({
              name: "Chicken on a sofa",
              description: "Pranks! Chicken! Breaking and entering strangers' homes",
              image_url: "",
              public: true,
              owner_id: 2
            })

Club.create!({
              name: "The Teds",
              description: "Collecting Teds",
              image_url: "",
              public: true,
              owner_id: 3
            })

Club.create!({
              name: "Alien gathering",
              description: "Stop asking if we'll probe you.",
              image_url: "",
              public: true,
              owner_id: 3
            })

# Club.create({
#               name: "Reader Beaver",
#               description: "",
#               image_url: "",
#               public: true
#             })

# Club.create({
#               name: "How I Met Your Brother",
#               description: "",
#               image_url: "",
#               public: true
#             })

# Club.create({
#               name: "Sabacc",
#               description: "The fairest game of chance on this side of the galaxy.",
#               image_url: "https://applemagazine.com/wp-content/uploads/2021/05/lando-twins-sabacc-solo-a-star-wars-story.jpg",
#               public: true
#             })

Club.create!({
              name: "Hang out with Paul",
              description: "I'm Paul. Please guys. Anyone.",
              image_url: "",
              public: true,
              owner_id: 1
            })

Club.create!({
              name: "Cannibalism Workshop",
              description: "Bring Paul",
              image_url: "",
              public: true,
              owner_id: 1
            })


Club.create!({
              name: "Slasher roleplay",
              description: "Our final girl got mononucleosis",
              image_url: "",
              public: true,
              owner_id: 1
            })

# Club.create!({
#               name: " ",
#               description: "",
#               image_url: "",
#               public: true,
#               owner_id: 1
#             })
# Club.create({
#               name: "Earth",
#               description: "",
#               image_url: "",
#               public: true,
#               Events: "meteor strike"
#             })

puts "#{Club.count} clubs have risen"
"..................................................."
puts "#{Post.count} posts have been screamed into existence"

Post.create({
              content: "Hey guys. I am also human. I enjoy regular everyday things
              like photosynthesis and throwing ball.",
              user_id: 2,
              club_id: 1
            })

Post.create({
              content: "Could we change the schedule please ? I've been impaled.",
              user_id: 1,
              club_id:2
            })

Post.create({
              content: "I'm bringing chicken feet on thursday.",
              user_id: 3,
              club_id:2
            })

Post.create({
              content: "Stop asking me to change the schedule. If you can't
              come at 3 AM on a wednesday, that sounds like a you problem.",
              user_id: 2,
              club_id: 2
            })

Post.create({
              content: "Can't come. Wife gave birth to a mouse. He's surprisingly verbal.",
              user_id: 3 ,
              club_id: 2
            })

Post.create({
              content: 'Is nobody going to talk about the alien who joined ?',
              user_id: 3,
              club_id: 2
            })

Post.create({
              content: "Hello! Does anybody know how to get illegal substances.,
              The more illegal, the better",
              user_id: 2,
              club_id: 1
            })

Post.create({
              content: "I'm sorry, it's over. I can't do this anymore.",
              user_id: 3,
              club_id: 2
            })

Post.create({
              content: "I, for one, don't think anybody here is an alien.
              And even if there were, that'd be cool or whatever.",
              user_id: 3,
              club_id: 2
            })

Post.create({
              content: "I'm so happy to be here guys. I can be trusted with
              weapons.",
              user_id: 2,
              club_id: 1
            })

Post.create({
              content: "I'm so happy to be here guys. I can be trusted with
              weapons.",
              user_id: 2,
              club_id: 2
            })




puts "The posts have reached the base."

Category.create({
                  name: "Tech"
                })

Category.create({
                  name: "Literary"
                })

Category.create({
                  name: "Games"
                })

Category.create({
                  name: "Crafts"
                })

Category.create({
                  name: "Organ Harvesting"
                })

Category.create({
                  name: "Music"
                })

Category.create({
                  name: "Photography"
                })

Category.create({
                  name: "Culinary"
                })

Category.create({
                  name: "Arts"
                })

Category.create({
                  name: "Media"
                })

Category.create({
                  name: "Sports"
                })

Category.create({
                  name: "Fashion"
                })

Category.create({
                  name: "Support"
                })

Category.create({
                  name: "Volunteering"
                })

Category.create({
                  name: "Nature"
                })

Category.create({
                  name: "Academic"
                })

Category.create({
                  name: "Outing"
                })

Category.create({
                  name: "Drugs"
                })

puts "#{Category.count} categories created"

ClubCategory.create!({
                      club_id: 1,
                      category_id:1
                    })
