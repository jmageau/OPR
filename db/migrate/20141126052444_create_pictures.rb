class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :description
      t.attachment :image
      t.integer :property_id

      t.timestamps
    end
  end
end
