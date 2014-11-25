class Advertisement < ActiveRecord::Base
  attr_accessible :cost, :end_date, :newspaper_name, :start_date, :property_id
end
