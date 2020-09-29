class AddUsernameToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :s, :username, :string
  end
end
