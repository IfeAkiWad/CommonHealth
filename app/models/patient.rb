class Patient < ApplicationRecord
    has_many :reviews
    has_many :doctors, through: :reviews

end