class Review < ApplicationRecord
    belongs_to :user
    belongs_to :doctor
    
    validates :content, presence: true


    def self.find_by_doctor_id(id)
        where(doctor_id: id)
    end
    
end