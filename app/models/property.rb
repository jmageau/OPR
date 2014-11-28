class Property < ActiveRecord::Base
  attr_accessible :address, :deletion_status, :location, :number_of_bathrooms, :number_of_bedrooms, :number_of_other_rooms, :owner_id, :property_type, :rent, :subsidiary_agency_id

  validates :address, length: { minimum: 2 }
  validates :location, length: { minimum: 2 }
  validates :number_of_bathrooms, numericality: {only_integer: true, :greater_than_or_equal_to => 0}
  validates :number_of_bedrooms, numericality: {only_integer: true, :greater_than_or_equal_to => 0}
  validates :number_of_other_rooms, numericality: {only_integer: true, :greater_than_or_equal_to => 0}
  validates :property_type, length: { minimum: 2 }
  validates :rent, numericality: {:greater_than_or_equal_to => 0}, format: { with: /^[+-]?[0-9]{1,3}(?:,?[0-9]{3})*(?:\.[0-9]{2})?$/, message: "only allows numbers in format X*.YY" }

  belongs_to :subsidiary_agency
  belongs_to :owner
  has_many :advertisements
  has_many :leases
  has_many :visitations
  has_and_belongs_to_many :visiting_lists
  has_many :pictures
end
