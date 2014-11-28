class Customer < User
  attr_accessible :maximum_rental, :preferences, :subsidiary_agency_id

  belongs_to :subsidiary_agency
  has_many :interviews
  has_one :visiting_list
  has_many :leases
  has_and_belongs_to_many :visitations

  def self.model_name
    User.model_name
  end
end