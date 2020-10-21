class User < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews
    validates :username, :email, presence: true, uniqueness: true
    has_secure_password

    #omniauth custom class here
    #method will user object found, or return user object created
    def self.from_omniauth(auth)
        find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['first_name']
            u.email = auth['info']['email']
            # u.name = auth['info']['name']
            u.password = SecureRandom.hex(15)
        end
    end
end