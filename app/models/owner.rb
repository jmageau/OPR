class Owner < User
  attr_accessible :subsidiary_agency_id
  has_many :properties

  def self.model_name
    User.model_name
  end
end