class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :address
      t.string :location
      t.integer :number_of_bedrooms
      t.integer :number_of_bathrooms
      t.integer :number_of_other_rooms
      t.decimal :rent, :precision => 10, :scale => 2
      t.boolean :deletion_status
      t.integer :subsidiary_agency_id
      t.integer :owner_id

      t.timestamps
    end
  end
end
