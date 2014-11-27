class CreateCustomersVisitations < ActiveRecord::Migration
  def change
    create_table :customers_visitations, id: false do |t|
      t.belongs_to :customer
      t.belongs_to :visitation
    end
  end
end
