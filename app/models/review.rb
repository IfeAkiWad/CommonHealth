class Review < ApplicationRecord
    belongs_to :user, :optional => true
    belongs_to :doctor, :optional => true
    
    validates :content, presence: true, length: { maximum: 250 }


    def self.find_by_doctor_id(id)
        self.where(doctor_id: id)
    end
    
end