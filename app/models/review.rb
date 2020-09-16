class Review < ApplicationRecord
  belongs_to :course
  belongs_to :user

  validates :comment, presence: true
  validates :course_id, presence: true
  validates :user_id, presence: true
end