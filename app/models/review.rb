class Review < ApplicationRecord
    belongs_to :user
    belongs_to :doctor
    validates :content, presence: true
    
end