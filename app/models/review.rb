class Review < ApplicationRecord
    validates_presence_of :rating, :review
    belongs_to :user
    belongs_to :campsite
end
