class Customer < User
  attr_accessible :maximum_rental, :preferences

  belongs_to :subsidiary_agency
  has_many :interviews
  has_one :visiting_list
end