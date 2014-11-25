class CreateSubsidiaryAgencies < ActiveRecord::Migration
  def change
    create_table :subsidiary_agencies do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
