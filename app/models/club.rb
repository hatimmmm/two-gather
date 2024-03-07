class Club < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :public, inclusion: { in: [true, false] }
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :events, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
  has_many :club_categories
  has_many :categories, through: :club_categories
  has_one_attached :image

  def members
    self.users
  end
end
