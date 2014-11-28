class UsersChangePreferencesToText < ActiveRecord::Migration
  def change
    change_column :users, :preferences, :text
  end
end
