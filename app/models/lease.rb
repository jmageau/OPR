class Lease < ActiveRecord::Base
  attr_accessible :customer_id, :duration, :monthly_fee, :property_id
end
