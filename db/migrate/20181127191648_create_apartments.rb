class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :street
      t.string :unit
      t.string :city
      t.integer :postalcode
      t.string :state
      t.string :country
      t.string :manager_name
      t.string :phone_number
      t.string :hours

      t.timestamps
    end
  end
end
