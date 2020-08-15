class Professor < ApplicationRecord
    has_many :courses 
    has_many :ratings
    validates :first_name, presence: true, length: { minimum: 4 }
    validates :last_name, presence: true, length: { minimum: 4 }
end
