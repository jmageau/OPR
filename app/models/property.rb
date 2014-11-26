class Property < ActiveRecord::Base
  attr_accessible :address, :deletion_status, :location, :number_of_bathrooms, :number_of_bedrooms, :number_of_other_rooms, :owner_id, :property_type, :rent, :subsidiary_agency_id
  belongs_to :subsidiary_agency
  # TODO: belongs_to :owner
  has_many :advertisements
  has_many :leases
  has_many :visitations
  has_and_belongs_to_many :visiting_lists
  has_many :pictures
end
