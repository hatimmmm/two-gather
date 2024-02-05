class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :club
  belongs_to :role
  validates :user_id, presence: true
  validates :club_id, presence: true
  validates :role_id, presence: true
end
