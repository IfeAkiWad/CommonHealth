class Patient < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews
    validates :username, :email, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :password, presence: true
     #should I validate the presence of location
    has_secure_password
end