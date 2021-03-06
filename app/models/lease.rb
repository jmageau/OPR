class Lease < ActiveRecord::Base
  attr_accessible :customer_id, :duration, :monthly_fee, :property_id

  validates :duration, numericality: { greater_than: 0  }
  validates :monthly_fee, numericality: {greater_than_or_equal_to: 0}, format: { with: /^[0-9]{1,3}(?:,?[0-9]{3})*(?:\.[0-9]{2})?$/, message: "only allows numbers in format X*.YY" }
  belongs_to :property
  belongs_to :customer
end
