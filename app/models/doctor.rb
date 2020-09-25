class Doctor < ApplicationRecord
    has_many :reviews
    has_many :patients, through: :reviews
end