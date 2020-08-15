class Course < ApplicationRecord
  belongs_to :professor
  has_many :reviews
  validates :name, presence: true, length: { minimum: 5 }
  validates :professor, presence: true
end