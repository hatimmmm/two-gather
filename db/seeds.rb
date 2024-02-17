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

User.create!({
  first_name: "Human",
  last_name: "User",
  email: "johndoe@gmail.com",
  password: "blabla",
  password_confirmation: "blabla",
  bio: "I am made of so much blood and organic tissue.",
})

User.create!({
  first_name: "Robot",
  last_name: "User",
  email: "beepboop@gmail.com",
  password: "blabla",
  password_confirmation: "blabla",
  bio: "There are so many cables inside me.",
})

User.create!({
  first_name: "Alien",
  last_name: "User",
  email: "xenomorph@gmail.com",
  password: "blabla",
  password_confirmation: "blabla",
  bio: "Stop asking me if I'm green.",
})

User.create!({
  first_name: "Barney",
  last_name: "Stinson",
  email: "legen-dary@gmail.com",
  password: "blabla",
  password_confirmation: "blabla",
  bio: "It's not legendary, unless your Teds are there to see it.",

})

User.create!({
  first_name: "Banned",
  last_name: "User ",
  email: "banned@gmail.com",
  password: "blabla",
  password_confirmation: "blabla",
  bio: "I like smells.",
})

User.create!({
  first_name: "Literally",
  last_name: "just a rat",
  email: "ratboy@gmail.com",
  password: "blabla",
  password_confirmation: "blabla",
  bio: "No i will not cook for you.",
})

User.create!({
  first_name: "Just",
  last_name: "juan",
  email: "justjuan@gmail.com",
  password: "blabla",
  password_confirmation: "blabla",
  bio: "Juan.",
})

User.create!({
               first_name: "Carl",
               last_name: "Carl",
               email: "carl@gmail.com",
               password: "carlcarl",
               password_confirmation: "carlcarl",
               bio: "Carl",
             })

puts "#{User.count} users have spawned"

puts "#{User.count} users created"

Club.create!({
  name: "Club",
  description: "This is club. You join.",
  image_url: "https://media.gettyimages.com/id/507851513/photo/formal-studio-portrait-of-six-serious-young-adults.jpg?s=612x612&w=gi&k=20&c=dyzhWenpq-cfqS4-bSpOjVzA6ZQb3k8du-htYSk2Zn8=",
  public: true,
  owner_id: 3,
})

Club.create!({
               name: "Readers' guild",
               description: "Join us every week for a book, a beverage and some cubed cheese!.",
               image_url: "https://image.cnbcfm.com/api/v1/image/104702698-GettyImages-583816330-book-club.jpg?v=1532563764",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "Human gathering",
               description: "We are human organisms seeking to share oxygen and edible snacks around a hobby.",
               image_url: "https://cdn.vox-cdn.com/thumbor/rE8qfP45-3lL3qSMx0nL4k6fZnY=/230x145:1575x1154/1400x1050/filters:focal(230x145:1575x1154):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/45894920/deathofcaesar.0.0.jpg",
               public: true,
               owner_id: 1,
             })

Club.create!({
  name: "Carl",
  description: "Carl",
  image_url: "https://logos.flamingtext.com/Name-Logos/Carl-design-sketch-name.png",
  public: true,
  owner_id: 3,
})

Club.create!({
               name: "On company time",
               description: "Dungeons & Dragons & Cheese",
               image_url: "https://static01.nyt.com/images/2022/05/22/fashion/21DUNGEONS-DRAGONS1/21DUNGEONS-DRAGONS1-videoSixteenByNineJumbo1600-v2.jpg",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "Robot gathering",
               description: "Looking to share oil around the office electric socket.",
               image_url: "https://y.yarn.co/326b4f32-8d7c-416c-bf79-5d1072da45f1_screenshot.jpg",
               public: true,
               owner_id: 2,
             })

Club.create!({
               name: "Alien gathering",
               description: "Please don't ask us to probe you.",
               image_url: "https://y.yarn.co/326b4f32-8d7c-416c-bf79-5d1072da45f1_screenshot.jpg",
               public: true,
               owner_id: 3,
             })

Club.create!({
               name: "Drugs. I mean not drugs.",
               description: "We do not sell drugs. They are bad, yo!",
               image_url: "https://worldstrides.com/wp-content/uploads/2020/10/AdobeStock_170707235_main-min.jpg",
               public: true,
               owner_id: 5,
             })

Club.create!({
               name: "Chess master",
               description: "Fischer ? I barely know her.",
               image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/San_Francisco_Mechanics%E2%80%99_Institute-0700.jpg/1200px-San_Francisco_Mechanics%E2%80%99_Institute-0700.jpg",
               public: true,
               owner_id: 1,
             })

Club.create!({
  name: "Hang out with Paul",
  description: "I'm Paul. Please guys. Anyone.",
  image_url: "https://m.media-amazon.com/images/M/MV5BMTQ3ODExOTk1N15BMl5BanBnXkFtZTcwMTQzMDQ2NA@@._V1_.jpg",
  public: true,
  owner_id: 1,
})

Club.create!({
               name: "Don't hang out with Paul",
               description: "Do not trust him. He WILL steal both your pet AND your underwear. Also lamps. And condiments.",
               image_url: "https://play-lh.googleusercontent.com/proxy/hk0cXPm_fyzKKw6tTkVPlmEPoX9kjvifVQyWSRCvn-wrLtNeKwglPvTaKY2B8kowNLs1Nd_G7BF6Yt4LhecigPhPoqzJfsh6h0vyVsRE7guwt0dbFlgyDbQ=s1920-w1920-h1080",
               public: true,
               owner_id: 5,
             })

Club.create!({
  name: "Teaching our rats how to cook",
  description: "We have rats. They cook. This isn't entirely legal. I mean it is. This is legal.",
  image_url: "https://www.heyalma.com/wp-content/uploads/2020/12/linguiniratatouille.jpg",
  public: true,
  owner_id: 1,
})

Club.create!({
               name: "Chicken on a sofa",
               description: "Pranks! Chicken! Breaking and entering strangers' homes!",
               image_url: "https://i.ytimg.com/vi/jiO2TdhD_ec/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGUgWShRMA8=&rs=AOn4CLDMG3Iqcfa5XJUx76-M1oboe1ao7Q",
               public: true,
               owner_id: 3,
             })

Club.create!({
               name: "The Teds",
               description: "Collecting Teds",
               image_url: "https://s3-eu-west-1.amazonaws.com/image-cdn-dev.magnum-dev.com/image/17350/1920x4000.jpg",
               public: true,
               owner_id: 4,
             })

Club.create!({
               name: "The Craft Zone",
               description: "The rule is to always use too much glitter.",
               image_url: "https://admin.craftscouncil.org.uk/images/SdlnwYG2PEBqRJWUPJtG9bXXrdA=/17031/format-webp%7Cwidth-990/LEARNING11.JPG",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "Survivalist Bootcamp",
               description: "This will self-destruct in 4 to 5 business days",
               image_url: "https://www.fbi.gov/image-repository/unabomber-cabin.jpeg/@@images/image/high",
               public: true,
               owner_id: 5,
             })

Club.create!({
               name: "Throwing rocks at children",
               description: "You have to bring your own rock. No need to provide the children.",
               image_url: "https://qph.cf2.quoracdn.net/main-qimg-f9cd00f9bf09bbc824f8f4c4736c171d-lq",
               public: true,
               owner_id: 5,
             })

Club.create!({
               name: "Throwing rocks at people in general ",
               description: "You have to bring your own rock. The people are free range.",
               image_url: "https://gp1.wac.edgecastcdn.net/802892/http_public_production/artists/images/3603652/original/crop:x0y0w485h324/hash:1467469688/1423197602_rock_throwing1254687545.jpg?1467469688",
               public: true,
               owner_id: 3,
             })

Club.create!({
               name: "Use your words",
               description: "Let's start a writing workshop! Prompts and feedback galore.",
               image_url: "https://i0.wp.com/theaccidentalcommunicator.com/wp-content/uploads/sites/3/2016/12/AccComm-3293117576_05f43d8305_z.jpg",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "This is not a trap",
               description: "How do you feel about damp constricted places ?",
               image_url: "https://p.turbosquid.com/ts-thumb/7A/3wm5mX/Qr2kI9sK/cage02/jpg/1349832279/1920x1080/fit_q87/389b5ddd50bc6503889b20820587dbcd3a69d2ac/cage02.jpg",
               public: true,
               owner_id: 5,
             })

Club.create!({
               name: "Lawyer Support Group",
               description: "Lawyer? I barely know her. I know her. She's paying me.",
               image_url: "https://i.kym-cdn.com/entries/icons/facebook/000/041/606/cover7.jpg",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "Collective screaming",
               description: "Channeling all your emotions into noise pollution",
               image_url: "https://miro.medium.com/v2/resize:fit:700/1*hOqxrAl2ctCefDvuqD7QJA.jpeg",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "Yoga & Yogurt",
               description: "Unravel your knots and grab a spoon with us!",
               image_url: "https://inspireyoga.com/wp-content/uploads/2021/02/InspireYogaGV-032019_PRT-25-scaled.jpg",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "Come in. Commune!",
               description: "Do you feel truly held by the people around you ?",
               image_url: "https://www.looper.com/img/gallery/30-scary-movies-like-midsommar-you-need-to-watch/l-intro-1644447165.jpg",
               public: true,
               owner_id: 5,
             })

Club.create!({
  name: "Yes, and ? ",
  description: "Nothing but improv!",
  image_url: "https://i.guim.co.uk/img/media/0cd029e0eeb66cf827d332298c957b7c66e26afa/0_374_5616_3370/master/5616.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6d100e6e82515da53043c7537f988f0f",
  public: true,
  owner_id: 1,
})

Club.create!({
               name: "Muppet Goulag",
               description: "You join. Straight to Muppet Goulag.",
               image_url: "https://i.kym-cdn.com/entries/icons/original/000/036/565/gulag.jpg",
               public: true,
               owner_id: 5,
             })

Club.create!({
               name: "Blood, guts and popcorn",
               description: "I know what you're going to do this summer! Watch horror movie marathons as a group",
               image_url: "https://www.snexplores.org/wp-content/uploads/2022/10/1440_scary_movie_feat-1440x700.jpg",
               public: true,
               owner_id: 5,
             })

Club.create!({
               name: "Group tape watching",
               description: "We got this very normal tape that we would like to watch together",
               image_url: "https://static1.srcdn.com/wordpress/wp-content/uploads/2021/12/the-ring-video-samara-video-vhs.jpg",
               public: true,
               owner_id: 1,
             })

Club.create!({
               name: "The Card Collective",
               description: "Aiming to unite a jovial group of card game fanatics.",
               image_url: "https://www.classicgamesandpuzzles.com/images/Group_Card_Game.jpeg",
               public: true,
               owner_id: 1,
             })

Club.create!({
  name: "Sabacc",
  description: "The fairest game of chance on this side of the galaxy.",
  image_url: "https://applemagazine.com/wp-content/uploads/2021/05/lando-twins-sabacc-solo-a-star-wars-story.jpg",
  public: true,
  owner_id: 1,
})

Club.create!({
               name: "Cannibals (Not So) Anonymous",
               description: "Free snacks provided. Paul might be there",
               image_url: "https://happycredit.in/cloudinary_opt/blog/5-best-barbeque-grills-in-india-for-people-who-love-to-cook-mh9e2.webp",
               public: true,
               owner_id: 5,
             })

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

ClubCategory.create!({
  club_id: 2,
  category_id: 8,
})

ClubCategory.create!({
  club_id: 3,
  category_id: 2,
})

ClubCategory.create!({
  club_id: 4,
  category_id: 5,
})
ClubCategory.create!({
  club_id: 5,
  category_id: 11,
})

ClubCategory.create!({
  club_id: 6,
  category_id: 4,
})

ClubCategory.create!({
  club_id: 7,
  category_id: 3,
})

ClubCategory.create!({
  club_id: 8,
  category_id: 30,
})

ClubCategory.create!({
  club_id: 9,
  category_id: 11,
})

ClubCategory.create!({
  club_id: 10,
  category_id: 6,
})

ClubCategory.create!({
  club_id: 11,
  category_id: 31,
})

ClubCategory.create!({
  club_id: 12,
  category_id: 16,
})

ClubCategory.create!({
  club_id: 13,
  category_id: 26,
})

ClubCategory.create!({
  club_id: 14,
  category_id: 23,
})

ClubCategory.create!({
  club_id: 15,
  category_id: 12,
})

ClubCategory.create!({
  club_id: 16,
  category_id: 23,
})

ClubCategory.create!({
  club_id: 17,
  category_id: 26,
})

ClubCategory.create!({
  club_id: 18,
  category_id: 26,
})

ClubCategory.create!({
  club_id: 19,
  category_id: 8,
})

ClubCategory.create!({
  club_id: 20,
  category_id: 13,
})

# Lawyer below

ClubCategory.create!({
  club_id: 21,
  category_id: 24,
})

ClubCategory.create!({
  club_id: 22,
  category_id: 2,
})

ClubCategory.create!({
  club_id: 23,
  category_id: 2,
})

ClubCategory.create!({
  club_id: 24,
  category_id: 26,
})

ClubCategory.create!({
  club_id: 25,
  category_id: 23,
})

ClubCategory.create!({
  club_id: 26,
  category_id: 23,
})

ClubCategory.create!({
  club_id: 27,
  category_id: 19,
})

ClubCategory.create!({
  club_id: 28,
  category_id: 19,
})

ClubCategory.create!({
  club_id: 29,
  category_id: 20,
})

ClubCategory.create!({
  club_id: 30,
  category_id: 11,
})

ClubCategory.create!({
  club_id: 31,
  category_id: 11,
})

# ClubCategory.create!({
#   club_id: 32,
#   category_id: 20,
# })

# ClubCategory.create!({
#   club_id: 33,
#   category_id: 24,
# })

# ClubCategory.create!({
#   club_id: 34,
#   category_id: 31,
# })

# ClubCategory.create!({
#   club_id: 35,
#   category_id: 32,
# })

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
              user_id: 1,
              club_id: 5,
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
