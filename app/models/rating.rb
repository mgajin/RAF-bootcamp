class Rating < ApplicationRecord
  belongs_to :user, :professor
  validates :rating, presence: true
end
