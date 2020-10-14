class Doctor < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    # validates :name, uniqueness: true
    validates :name, :specialty, :specialty, :insurance_accepted, presence: true
    #should I validate the presence of specialty, sspecialty, and insurance?

    def self.find_by_location(location)
        where(location: location)
    end
end