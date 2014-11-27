class PropertiesVisitingList < ActiveRecord::Base
  attr_accessible :visiting_list_id, :property_id

  belongs_to :property
  belongs_to :visiting_list
end
