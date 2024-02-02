class Category < ApplicationRecord
  has_many :clubs, through: :club_category
  has_many :club_category
end
