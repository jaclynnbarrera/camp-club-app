class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_many :reviews
    has_many :campsites, through: :reviews
    before_validation :format_username

    validates :username, length: {
        maximum: 1,
        tokenizer: lambda { |str| str.split(/\s+/) },
        too_long: "Please choose a name that is only %{count} word."
      }

    has_secure_password

    def format_username
        self.username = self.username.downcase
    end
end 