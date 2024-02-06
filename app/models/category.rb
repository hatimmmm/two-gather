class Category < ApplicationRecord
  has_many :club_categories
  has_many :clubs, through: :club_categories
end
