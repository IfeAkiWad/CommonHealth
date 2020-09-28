class Review < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    #what would I need to validate here?

    
end