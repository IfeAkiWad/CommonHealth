class CreatePatientsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :location
    end
  end
end
