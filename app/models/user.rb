class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memberships
  has_many :clubs, through: :memberships
  has_many :owned_clubs, class_name: 'Club', foreign_key: 'owner_id'

  has_many :posts
  has_many :comments

  has_many :interests, through: :user_interests
  has_many :user_interests

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }
  validates :bio, length: { maximum: 200 }

end
