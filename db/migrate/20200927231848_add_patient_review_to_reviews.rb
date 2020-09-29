class AddUserReviewToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :user_review, :string
  end
end
