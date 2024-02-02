class Club < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :public, inclusion: { in: [true, false] }
  belongs_to :owner, class_name: "User"
  has_many :users, through: :membership
  has_many :events, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :categories, through: :club_category
  has_many :club_category
end
