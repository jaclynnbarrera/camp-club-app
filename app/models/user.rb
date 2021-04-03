class User < ApplicationRecord
    validates_presence_of :first_name, :last_name, :email
    validates_uniqueness_of :email
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

    has_many :reviews
    has_many :campsites, through: :reviews

end