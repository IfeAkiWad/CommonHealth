class Review < ApplicationRecord
    belongs_to :user
    belongs_to :doctor
    
    validates :content, presence: true, length: { maximum: 250 }


    # def self.find_by_doctor_id(id)
    #     self.where(doctor_id: id)
    # end
    
end