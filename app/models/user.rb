class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many :reviews
    has_many :campsites, through: :reviews
    before_validation :format_username
    has_secure_password

    def format_username
        self.username = self.username.downcase
    end
end 