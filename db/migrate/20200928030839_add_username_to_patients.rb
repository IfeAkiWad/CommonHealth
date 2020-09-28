class AddUsernameToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :username, :string
  end
end
