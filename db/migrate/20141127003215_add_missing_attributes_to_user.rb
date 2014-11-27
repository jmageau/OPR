class AddMissingAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string

    add_column :users, :maximum_rental, :integer
    add_column :users, :preferences, :string
    add_column :users, :subsidiary_agency_id, :integer

    add_column :users, :type, :string

    add_column :interviews, :customer_id, :integer
  end
end
