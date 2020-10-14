class Doctor < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    validates :name, :location, :specialty, :insurance_accepted, presence: true
    
    def self.by_location(location)
        where(location: location)
    end
end