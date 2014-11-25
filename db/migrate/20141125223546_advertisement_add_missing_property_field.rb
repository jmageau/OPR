class AdvertisementAddMissingPropertyField < ActiveRecord::Migration
  def change
    add_column(:advertisements,:property_id,:integer)
  end

end
