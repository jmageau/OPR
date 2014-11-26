class SubsidiaryAgency < ActiveRecord::Base
  attr_accessible :location, :name

  validates :location, length: { minimum: 2 }
  validates :name, length: { minimum: 2 }
end
