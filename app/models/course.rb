class Course < ApplicationRecord
  belongs_to :professor
  belongs_to :subject
  has_many :subscriptions
  has_many :users, through: :subscriptions, :dependent => :destroy
  has_many :reviews

  validates :professor_id, presence: true
  validates :subject_id, presence: true
end