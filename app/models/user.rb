class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memberships
  has_many :clubs, through: :memberships
  # has_many :owned_clubs, class_name: "Club", foreign_key: "owner_id"

  has_many :posts
  has_many :comments

  has_many :user_interests
  has_many :interests, through: :user_interests

  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, length: { maximum: 200 }

  def full_name
    "#{first_name} #{last_name}"
  end

  def member_of?(club)
    self.clubs.include?(club)
  end

  def owner_of?(club)
    club.owner == self
  end
end
