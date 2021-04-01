class Campsite < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true
    has_many :reviews
    has_many :users, through: :reviews
end
