class CreatePropertyVisitingList < ActiveRecord::Migration
  def change
    create_table :properties_visiting_lists do |t|
      t.integer :property_id
      t.integer :visiting_list_id

      t.timestamps
    end
    add_index :properties_visiting_lists, [:property_id, :visiting_list_id], name:"property_id_and_visiting_list_id_index"
  end

end
