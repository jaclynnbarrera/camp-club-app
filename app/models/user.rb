class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many :reviews
    has_many :campsites, through: :reviews

    has_secure_password
end 