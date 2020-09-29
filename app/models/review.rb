class Review < ApplicationRecord
    belongs_to :user
    belongs_to :doctor
    #what would I need to validate here?

    
end