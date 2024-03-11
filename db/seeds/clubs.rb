require "open-uri"

clubs = [
  {
    name: "Club",
    description: "This is club. You join.",
    public: true,
    owner_id: 3,
    image_url: "https://media.gettyimages.com/id/507851513/photo/formal-studio-portrait-of-six-serious-young-adults.jpg?s=612x612&w=gi&k=20&c=dyzhWenpq-cfqS4-bSpOjVzA6ZQb3k8du-htYSk2Zn8=",
  },
  {
    name: "Readers' guild",
    description: "Join us every week for a book, a beverage and some cubed cheese!.",
    public: true,
    owner_id: 1,
    image_url: "https://image.cnbcfm.com/api/v1/image/104702698-GettyImages-583816330-book-club.jpg?v=1532563764",
  },
  {
    name: "Human gathering",
    description: "We are human organisms seeking to share oxygen and edible snacks around a hobby.",
    public: true,
    owner_id: 1,
    image_url: "https://cdn.vox-cdn.com/thumbor/rE8qfP45-3lL3qSMx0nL4k6fZnY=/230x145:1575x1154/1400x1050/filters:focal(230x145:1575x1154):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/45894920/deathofcaesar.0.0.jpg",
  },
  {
    name: "Carl",
    description: "Carl",
    public: true,
    owner_id: 3,
    image_url: "https://logos.flamingtext.com/Name-Logos/Carl-design-sketch-name.png",
  },
  {
    name: "On company time",
    description: "Dungeons & Dragons & Cheese",
    public: true,
    owner_id: 1,
    image_url: "https://static01.nyt.com/images/2022/05/22/fashion/21DUNGEONS-DRAGONS1/21DUNGEONS-DRAGONS1-videoSixteenByNineJumbo1600-v2.jpg",
  },
  {
    name: "Robot gathering",
    description: "Looking to share oil around the office electric socket.",
    public: true,
    owner_id: 2,
    image_url: "https://y.yarn.co/326b4f32-8d7c-416c-bf79-5d1072da45f1_screenshot.jpg",
  },
  {
    name: "Alien gathering",
    description: "Please don't ask us to probe you.",
    public: true,
    owner_id: 3,
    image_url: "https://y.yarn.co/326b4f32-8d7c-416c-bf79-5d1072da45f1_screenshot.jpg",
  },

  {
    name: "Chess master",
    description: "Fischer ? I barely know her.",
    public: true,
    owner_id: 1,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/San_Francisco_Mechanics%E2%80%99_Institute-0700.jpg/1200px-San_Francisco_Mechanics%E2%80%99_Institute-0700.jpg",
  },

  {
    name: "Teaching our rats how to cook",
    description: "We have rats. They cook. This isn't entirely legal. I mean it is. This is legal.",
    public: true,
    owner_id: 1,
    image_url: "https://www.heyalma.com/wp-content/uploads/2020/12/linguiniratatouille.jpg",
  },

  {
    name: "The Craft Zone",
    description: "The rule is to always use too much glitter.",
    public: true,
    owner_id: 1,
    image_url: "https://admin.craftscouncil.org.uk/images/SdlnwYG2PEBqRJWUPJtG9bXXrdA=/17031/format-webp%7Cwidth-990/LEARNING11.JPG",
  },
  {
    name: "Survivalist Bootcamp",
    description: "This will self-destruct in 4 to 5 business days",
    public: true,
    owner_id: 5,
    image_url: "https://www.fbi.gov/image-repository/unabomber-cabin.jpeg/@@images/image/high",
  },

  {
    name: "Use your words",
    description: "Let's start a writing workshop! Prompts and feedback galore.",
    public: true,
    owner_id: 1,
    image_url: "https://i0.wp.com/theaccidentalcommunicator.com/wp-content/uploads/sites/3/2016/12/AccComm-3293117576_05f43d8305_z.jpg",
  },
  {
    name: "This is not a trap",
    description: "How do you feel about damp constricted places ?",
    public: true,
    owner_id: 5,
    image_url: "https://p.turbosquid.com/ts-thumb/7A/3wm5mX/Qr2kI9sK/cage02/jpg/1349832279/1920x1080/fit_q87/389b5ddd50bc6503889b20820587dbcd3a69d2ac/cage02.jpg",
  },
  {
    name: "Lawyer Support Group",
    description: "Lawyer? I barely know her. I know her. She's paying me.",
    public: true,
    owner_id: 1,
    image_url: "https://i.kym-cdn.com/entries/icons/facebook/000/041/606/cover7.jpg",
  },
  {
    name: "Collective screaming",
    description: "Channeling all your emotions into noise pollution",
    public: true,
    owner_id: 1,
    image_url: "https://miro.medium.com/v2/resize:fit:700/1*hOqxrAl2ctCefDvuqD7QJA.jpeg",
  },
  {
    name: "Yoga & Yogurt",
    description: "Unravel your knots and grab a spoon with us!",
    public: true,
    owner_id: 1,
    image_url: "https://inspireyoga.com/wp-content/uploads/2021/02/InspireYogaGV-032019_PRT-25-scaled.jpg",
  },
  {
    name: "Come in. Commune!",
    description: "Do you feel truly held by the people around you ?",
    public: true,
    owner_id: 5,
    image_url: "https://www.looper.com/img/gallery/30-scary-movies-like-midsommar-you-need-to-watch/l-intro-1644447165.jpg",
  },
  {
    name: "Yes, and ? ",
    description: "Nothing but improv!",
    public: true,
    owner_id: 1,
    image_url: "https://i.guim.co.uk/img/media/0cd029e0eeb66cf827d332298c957b7c66e26afa/0_374_5616_3370/master/5616.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6d100e6e82515da53043c7537f988f0f",
  },
  {
    name: "Muppet Goulag",
    description: "You join. Straight to Muppet Goulag.",
    public: true,
    owner_id: 5,
    image_url: "https://i.kym-cdn.com/entries/icons/original/000/036/565/gulag.jpg",
  },
  {
    name: "Blood, guts and popcorn",
    description: "I know what you're going to do this summer! Watch horror movie marathons as a group",
    public: true,
    owner_id: 5,
    image_url: "https://www.snexplores.org/wp-content/uploads/2022/10/1440_scary_movie_feat-1440x700.jpg",
  },
  {
    name: "Group tape watching",
    description: "We got this very normal tape that we would like to watch together",
    public: true,
    owner_id: 1,
    image_url: "https://static1.srcdn.com/wordpress/wp-content/uploads/2021/12/the-ring-video-samara-video-vhs.jpg",
  },

  {
    name: "The Card Collective",
    description: "Aiming to unite a jovial group of card game fanatics.",
    public: true,
    owner_id: 1,
    image_url: "https://www.classicgamesandpuzzles.com/images/Group_Card_Game.jpeg",
  },
  {
    name: "Sabacc",
    description: "The fairest game of chance on this side of the galaxy.",
    public: true,
    owner_id: 1,
    image_url: "https://applemagazine.com/wp-content/uploads/2021/05/lando-twins-sabacc-solo-a-star-wars-story.jpg",
  },
  {
    name: "Cannibals (Not So) Anonymous",
    description: "Free snacks provided. Paul might be there",
    public: true,
    owner_id: 5,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172214/club%20pictures/CLUB_ID_32_-_cannibals_anonymous_kdqpgv.jpg",
  },
  {
    name: "Divorcee ? Digiorno",
    description: "Providing you with a support system and pizza so you don't key your ex husband's car.",
    public: true,
    owner_id: 1,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172214/club%20pictures/CLUB_ID_33_-_Divorcee___Digiorno_muf8iw.jpg",
  },
  {
    name: "Slasher roleplay",
    description: "Our killer got mononucleosis at a festival.",
    public: true,
    owner_id: 1,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172203/club%20pictures/CLUB_ID_34_-_Slasher_RP_okkxs6.jpg",
  },
  {
    name: "Making an app that allows you to join clubs",
    description: "Nothing to do with this one. This is an original and separate idea.",
    public: true,
    owner_id: 1,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172204/club%20pictures/CLUB_ID_35_-_Making_app_3gather_vit0jd.jpg",
  }, {
    name: "Skewer? I hardly know her",
    description: "Have a barbecue with us ! Bring your own parts.",
    public: true,
    owner_id: 5,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172213/club%20pictures/CLUB_ID_29_-_SKEWER_HARDLY_KNOW_HER_doseaj.jpg",
  },
  {
    name: "Drugs. I mean not drugs.",
    description: "We do not sell drugs. They are bad, yo!",
    public: true,
    owner_id: 5,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172205/club%20pictures/CLUB_ID_8_-_Not_drugs_r47l08.jpg",
  },
  {
    name: "Hang out with Paul",
    description: "I'm Paul. Please guys. Anyone.",
    public: true,
    owner_id: 1,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172206/club%20pictures/CLUB_ID_10_-_Paul_smijgn.webp",
  },
  {
    name: "Don't hang out with Paul",
    description: "Do not trust him. He WILL steal both your pet AND your underwear. Also lamps. And condiments.",
    public: true,
    owner_id: 5,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172208/club%20pictures/CLUB_ID_11_-_Fuck_Paul_rhqafk.jpg",
  },
  {
    name: "Chicken on a sofa",
    description: "Pranks! Chicken! Breaking and entering strangers' homes!",
    public: true,
    owner_id: 3,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172209/club%20pictures/CLUB_ID_13_-_Chicken_on_a_sofa_l86aoo.jpg",
  },
  {
    name: "The Teds",
    description: "Collecting Teds",
    public: true,
    owner_id: 4,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172210/club%20pictures/CLUB_ID_14_-_The_Teds_dxeffe.jpg",
  },
  {
    name: "Throwing rocks at people in general ",
    description: "You have to bring your own rock. The people are free range.",
    public: true,
    owner_id: 3,
    image_url: "https://res.cloudinary.com/dgpk6t1we/image/upload/v1708172211/club%20pictures/CLUB_ID_18_-_Throwing_rocks_at_people_zeby2e.jpg",
  },
]

clubs.each do |club|
  if club[:image_url].include?("http")
    Club.create!(club.except(:image_url)).image.attach(io: URI.open(club[:image_url]), filename: "#{club[:name]}.jpg")
    puts "Created club: " + club[:name]
  else
    Club.create!(club.except(:image_url)).image.attach(io: File.open(club[:image_url]), filename: "#{club[:name]}.jpg")
    puts "Created club: " + club[:name]
  end
end
