# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be require_relativeed with the bin/rails db:seed command (or created alongside the database with db:setup).
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
puts "======================================="
require_relative "seeds/roles.rb"
puts "#{Role.count} roles have been craeted"
puts "======================================="
puts ""
puts "======================================="
require_relative "seeds/users.rb"
puts "#{User.count} users popped up!"
puts "======================================="
puts ""
puts "======================================="
require_relative "seeds/categories.rb"
puts "#{Category.count} categories created"
puts "======================================="
puts ""
puts "======================================="
require_relative "seeds/clubs.rb"
puts "#{Club.count} clubs have risen"
puts "======================================="
# puts ""
# puts "======================================="
# require_relative "seeds/club_category.rb"
# puts "#{ClubCategory.count} ClubCategories created"
# puts "======================================="
puts ""
puts "======================================="
require_relative "seeds/memberships.rb"
puts "#{Membership.count} Memberships created"
puts "======================================="
puts ""
puts "======================================="
require_relative "seeds/posts.rb"
puts "#{Post.count} Posts created"
puts "======================================="
puts ""
puts "======================================="
puts ""
puts "Roles : #{Club.count}"
puts "Users : #{User.count}"
puts "Clubs : #{Club.count}"
puts "Categories : #{Category.count}"
# puts "ClubCategories : #{ClubCategory.count}"
puts "Memberships : #{Membership.count}"
puts "Posts : #{Post.count}"
puts "----------------------------"
puts "Seeds have been planted     |"
puts "----------------------------"
