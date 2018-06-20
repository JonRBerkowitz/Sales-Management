class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street_number
      t.string :street_name
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.integer :client_id
      t.timestamps
    end
  end
end
