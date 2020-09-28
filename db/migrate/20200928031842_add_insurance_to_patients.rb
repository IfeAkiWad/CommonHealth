class AddInsuranceToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :insurance, :boolean
  end
end
