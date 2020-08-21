class Professor < ApplicationRecord
    has_many :courses, :dependent => :destroy
    validates :first_name, presence: true, length: { minimum: 4 }
    validates :last_name, presence: true, length: { minimum: 4 }
end