class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :campsites, through: :reviews
end
