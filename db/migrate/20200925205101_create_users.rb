class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :location
      t.string :email
      t.string :password
      t.string :password_digest
      t.boolean :insurance
    end
  end
end
