class Lease < ActiveRecord::Base
  attr_accessible :customer_id, :duration, :monthly_fee, :property_id

  validates :monthly_fee, format: { with: /^[+-]?[0-9]{1,3}(?:,?[0-9]{3})*(?:\.[0-9]{2})?$/, message: "only allows numbers in format X*.YY" }

end
