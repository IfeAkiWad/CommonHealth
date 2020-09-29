class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :doctor_id
      t.integer :user_id
      t.string :content
    end
  end
end
