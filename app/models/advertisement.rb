class Advertisement < ActiveRecord::Base
  attr_accessible :cost, :end_date, :newspaper_name, :start_date, :property_id

  validates :cost, numericality: {greater_than_or_equal_to: 0}, format: { with: /^[+-]?[0-9]{1,3}(?:,?[0-9]{3})*(?:\.[0-9]{2})?$/, message: "only allows numbers in format X*.YY" }
  validates :newspaper_name, length: { minimum: 2 }
  validates_with StartDateValidator
  validates_with EndDateValidator

  belongs_to :property
end
