class Agent < User
  attr_accessible :subsidiary_agency_id
  belongs_to :subsidiary_agency

  def self.model_name
    User.model_name
  end
end