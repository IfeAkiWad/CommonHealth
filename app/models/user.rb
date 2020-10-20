class User < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews
    validates :username, :name, :email, presence: true, uniqueness: true
    has_secure_password

    #omniauth custom class here
    #method will user object found, or return user object created
    def self.from_omniauth(auth)
        find_or_create_by(username: auth[:info][:email]) do |user|
            user.password = SecureRandom.hex(15)
        end
    end
end