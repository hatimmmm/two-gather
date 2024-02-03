class Post < ApplicationRecord
  belongs_to :user
  belongs_to :club
  has_many :comments, dependent: :destroy
  has_one_attached :photo
end
