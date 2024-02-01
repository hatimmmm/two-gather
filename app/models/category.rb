class Categorie < ApplicationRecord
  has_many :clubs, through: :club_categories
  has_many :club_categories
end
