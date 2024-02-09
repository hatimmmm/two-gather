class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memberships, dependent: :destroy
  has_many :clubs, through: :memberships
  # has_many :owned_clubs, class_name: "Club", foreign_key: "owner_id"

  has_many :posts
  has_many :comments

  has_many :user_interests
  has_many :interests, through: :user_interests

  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :first_name, presence: true, length: { maximum: 50 }, on: :create
  validates :last_name, presence: true, length: { maximum: 50 }, on: :create
  validates :bio, length: { maximum: 200 }, on: :update, allow_blank: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def member_of?(club)
    self.clubs.include?(club)
  end

  def owner_of?(club)
    club.owner == self
  end

  def owned_clubs
    Club.where(owner: self)
  end

  def member_of_clubs
    Club.joins(:memberships).where(memberships: { user_id: self.id })
  end

  def avatar_url
    if avatar.attached?
      avatar.key
    else
      "https://res.cloudinary.com/dgpk6t1we/image/upload/v1707165672/assets/27470339_7294787_bxgffu.jpg"
    end
  end

  def events
    event = Event.where(club_id: self.clubs.ids)
  end
end
