class User < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews
    validates :username, :email, presence: true, uniqueness: true
    validates :name, presence: true
    validates :password, presence: true, uniqueness: true
    validates :location, presence: true
     #should I validate the presence of location
    has_secure_password

    #omniauth custom class here
end