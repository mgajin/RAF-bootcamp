class User < ApplicationRecord
    has_many :subscriptions
    has_many :courses ,through: :subscriptions, :dependent => :destroy 
    has_many :reviews

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true, length: { minimum: 4 }, uniqueness: true
    validates :password, presence: true, length: { minimum: 4 }
    has_secure_password

    attr_accessor :remember_token

    # Returns hash digest of the given string
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    # Returns random token
    def User.new_token
        SecureRandom.urlsafe_base64
    end

    # Remembers user
    def remember 
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    # Forgets a user
    def forget
        update_attribute(:remember_digest, nil)
    end

    # Returns true if token matches the digest
    def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

end
