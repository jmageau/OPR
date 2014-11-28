class Owner < User
  attr_accessible :subsidiary_agency_id
  has_many :properties
end