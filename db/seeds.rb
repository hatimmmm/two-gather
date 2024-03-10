# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

puts "Let's clean up this place, shall we? "
puts "Ok ok we're scrubbing"
Club.destroy_all
User.destroy_all
Post.destroy_all

puts "Database is squeaky deeky clean :)"
require_relative "seeds/users"
require_relative "seeds/clubs"

puts "#{Club.count} clubs have risen"

Category.create({
                  name: "Club",
                })

Category.create({
                  name: "Human",
                })

Category.create({
                  name: "Alien",
                })

Category.create({
                  name: "Robot",
                })

Category.create({
                  name: "Carl",
                })

Category.create({
                  name: "Weirdos",
                })

Category.create({
                  name: "Tech",
                })

Category.create({
                  name: "Literary",
                })

Category.create({
                  name: "Stalking",
                })

Category.create({
                  name: "Farming",
                })

Category.create({
                  name: "Games",
                })

Category.create({
                  name: "Crafts",
                })

Category.create({
                  name: "Organ Harvesting",
                })

Category.create({
                  name: "Music",
                })

Category.create({
                  name: "Photography",
                })

Category.create({
                  name: "Culinary",
                })

Category.create({
                  name: "Flashmobs",
                })

Category.create({
                  name: "Arts",
                })

Category.create({
                  name: "Media",
                })

Category.create({
                  name: "Cannibalism",
                })

Category.create({
                  name: "Sports",
                })

Category.create({
                  name: "Fashion",
                })

Category.create({
                  name: "Support",
                })

Category.create({
                  name: "Volunteering",
                })

Category.create({
                  name: "Legally dubious",
                })

Category.create({
                  name: "Nature",
                })

Category.create({
                  name: "Academic",
                })

Category.create({
                  name: "Outing",
                })

Category.create({
                  name: "Drugs",
                })

Category.create({
                  name: "Hate",
                })

Category.create({
                  name: "Larping",
                })

Category.create({
                  name: "Theft",
                })

ClubCategory.create({
                      club_id: Club.first.id,
                      category_id: Category.first.id,
                    })

ClubCategory.create!({
  club_id: 1,
  category_id: 1,
})
Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 1,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 2,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 3,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 4,
            })

Post.create({
  content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
})

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 6,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 7,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 8,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 9,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 10,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 11,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 12,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 13,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 14,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 15,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 16,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 17,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 18,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 19,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 20,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 21,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 23,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 24,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 25,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 26,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 27,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 28,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 29,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 30,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 31,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 32,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 33,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 34,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 35,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "AAAAAAAAAAAAAAAAAAAAH",
              user_id: 1,
              club_id: 22,
            })

Post.create({
              content: "I have joined",
              user_id: 1,
              club_id: 1,
            })

Post.create({
              content: "Okay now what ?",
              user_id: 1,
              club_id: 1,
            })

Post.create({
              content: "The oxygen outside today was a little spicy am i right ? ah ah. Can't wait for the next event!",
              user_id: 3,
              club_id: 3,
            })

Post.create({
              content: "Oh my deity, these taxes! When will the big man stop picking on the little boy!",
              user_id: 3,
              club_id: 3,
            })

Post.create({
              content: "Is nobody going to talk about the obvious alien who joined ?",
              user_id: 3,
              club_id: 2,
            })

Post.create({
              content: "Carl",
              user_id: 8,
              club_id: 4,
            })

Post.create({
              content: "Carl ?",
              user_id: 8,
              club_id: 4,
            })

Post.create({
              content: "Carl",
              user_id: 8,
              club_id: 4,
            })

Post.create({
              content: "Carl",
              user_id: 8,
              club_id: 4,
            })

Post.create({
              content: "Carl ???",
              user_id: 8,
              club_id: 4,
            })

Post.create({
              content: "Carl !!!!!!!",
              user_id: 8,
              club_id: 4,
            })

Post.create({
              content: "Carl",
              user_id: 8,
              club_id: 4,
            })

Post.create({
              content: "It smells weird in here",
              user_id: 1,
              club_id: 4,
            })

Post.create({
              content: "Hey guys. I am also human. I enjoy regular everyday things
              like photosynthesis and throwing ball.",
              user_id: 3,
              club_id: 3,
            })

Post.create({
              content: "Could we change the schedule please ? I've been impaled.",
              user_id: 1,
              club_id: 2,
            })

Post.create({
              content: "I'm bringing chicken feet on thursday.",
              user_id: 3,
              club_id: 2,
            })

Post.create({
              content: "Stop asking me to change the schedule. If you can't
              come at 3 AM on a wednesday, that sounds like a you problem.",
              user_id: 2,
              club_id: 2,
            })

Post.create({
              content: "Can't come. Wife gave birth to a mouse. He's surprisingly verbal.",
              user_id: 3,
              club_id: 2,
            })

Post.create({
              content: "Hello! Does anybody know how to get illegal substances.,
              The more illegal, the better",
              user_id: 5,
              club_id: 1,
            })

Post.create({
              content: "I'm sorry, it's over. I can't do this anymore.",
              user_id: 3,
              club_id: 2,
            })

Post.create({
              content: "I, for one, don't think anybody here is an alien.
              And even if there were, that'd be cool or whatever.",
              user_id: 3,
              club_id: 2,
            })

Post.create({
              content: "I'm so happy to be here guys. I can be trusted with
              weapons.",
              user_id: 5,
              club_id: 1,
            })

Post.create({
              content: "Hello! Does anybody know how to get illegal substances.,
              The more illegal, the better",
              user_id: 5,
              club_id: 1,
            })

Post.create({
              content: "I am so hungry",
              user_id: 1,
              club_id: 2,
            })

Post.create({
              content: "Heloooooooooo",
              user_id: 1,
              club_id: 32,
            })

Role.create({
  name: "member",
})

Role.create({
  name: "admin",
})

Membership.create({
  user_id: User.first.id,
  club_id: Club.first.id,
  role_id: Role.first.id,
})

Membership.create({
  user_id: User.first.id,
  club_id: Club.find(2).id,
  role_id: Role.first.id,
})

puts "#{Club.count} clubs created"
puts "#{Category.count} categories created"
puts "#{ClubCategory.count} ClubCategories created"
puts "#{Role.count} Roles created"
puts "#{Membership.count} Memberships created"
