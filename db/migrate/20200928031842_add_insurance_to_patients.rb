class AddInsuranceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :insurance, :boolean
  end
end
