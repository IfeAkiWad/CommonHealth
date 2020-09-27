class AddPatientReviewToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :patient_review, :string
  end
end
