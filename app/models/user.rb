class User < ApplicationRecord
    has_many :reviews
    has_many :campsites, through: :reviews
end