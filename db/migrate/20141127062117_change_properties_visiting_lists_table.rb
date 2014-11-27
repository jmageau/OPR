class ChangePropertiesVisitingListsTable < ActiveRecord::Migration
  def change
    drop_table :properties_visiting_lists

    create_table :properties_visiting_lists, id: false do |t|
      t.belongs_to :property
      t.belongs_to :visiting_list
    end

  end
end
