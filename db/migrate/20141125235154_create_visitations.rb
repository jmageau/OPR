class CreateVisitations < ActiveRecord::Migration
  def change
    create_table :visitations do |t|
      t.date :date
      t.time :time
      t.string :comments
      t.integer :property_id

      t.timestamps
    end
  end
end
