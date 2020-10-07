class User < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews
    validates :username, :email, presence: true, uniqueness: true
    validates :name, presence: true
    validates :location, presence: true
     #should I validate the presence of location
    has_secure_password

    #omniauth custom class here
    #method will user object found, or return user object created
    def self.from_omniauth(auth)
        find_or_create_by(username: auth[:info][:email]) do |user|
            user.password = secureRandom.hex(15)
        end
    end
end