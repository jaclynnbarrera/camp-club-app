class Campsite < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true
    validates :bio, presence: true
    #maybe add length validation?
    has_many :reviews
    has_many :users, through: :reviews
end  