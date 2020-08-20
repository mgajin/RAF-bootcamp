class Course < ApplicationRecord
  belongs_to :professor
  validates :name, presence: true, length: { minimum: 5 }
  validates :professor, presence: true
  validates :subject, presence: true
end