class Membership < ApplicationRecord
  belongs_to :user, :role, :club
end
