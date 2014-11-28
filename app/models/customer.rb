class Customer < User
  attr_accessible :maximum_rental, :preferences, :subsidiary_agency_id

  validates :maximum_rental, numericality: {:greater_than_or_equal_to => 0}, format: { with: /^[+-]?[0-9]{1,3}(?:,?[0-9]{3})*(?:\.[0-9]{2})?$/, message: "only allows numbers in format X*.YY" }

  belongs_to :subsidiary_agency
  has_many :interviews
  has_one :visiting_list
  has_many :leases
  has_and_belongs_to_many :visitations
end