class Club < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :owner, class_name: 'User'
  has_many :users, through: :membership
  has_many :events, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :memberships, dependent: :destroy
end
