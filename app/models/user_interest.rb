class UserInterest < ApplicationRecord
  belongs_to :interest, :user
end
