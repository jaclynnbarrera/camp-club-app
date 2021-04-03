class User < ApplicationRecord
    before_validation :make_title_case

    validates_presence_of :first_name, :last_name, :email
    validates_uniqueness_of :email
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

    has_many :reviews
    has_many :campsites, through: :reviews

    has_secure_password

    def make_title_case
        self.first_name = self.first_name.titlecase
        self.last_name = self.last_name.titlecase
    end

end