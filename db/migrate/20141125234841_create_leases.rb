class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :duration
      t.decimal :monthly_fee, :precision => 10, :scale => 2
      t.integer :property_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
