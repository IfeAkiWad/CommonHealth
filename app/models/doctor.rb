class Doctor < ApplicationRecord
    has_many :reviews
    has_many :patients, through: :reviews
    validates :name, uniqueness: true
    validates :name, presence: true
    #should I validate the presence of location, sspecialty, and insurance?
    
end