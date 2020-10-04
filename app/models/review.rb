class Review < ApplicationRecord
    belongs_to :user
    belongs_to :doctor, :optional => true
    
    validates :content, presence: true


    def self.find_by_doctor_id(id)
        self.where(doctor_id: id)
    end
    
end