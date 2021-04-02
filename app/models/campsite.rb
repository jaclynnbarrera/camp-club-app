class Campsite < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates_presence_of :address, :bio
    #maybe add length validation?
    has_many :reviews
    has_many :users, through: :reviews
    before_validation :make_title_case
    accepts_nested_attributes_for :reviews

     def make_title_case
        self.name = self.name.titlecase
    end
    
end  