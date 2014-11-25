class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :newspaper_name
      t.date :start_date
      t.date :end_date
      t.decimal :cost, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
