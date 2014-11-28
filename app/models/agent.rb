class Agent < User
  attr_accessible :subsidiary_agency_id
  belongs_to :subsidiary_agency
end