class CreateVisitingLists < ActiveRecord::Migration
  def change
    create_table :visiting_lists do |t|
      t.integer :customer_id

      t.timestamps
    end
  end
end
