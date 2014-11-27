class SubsidiaryAgency < ActiveRecord::Base
  attr_accessible :location, :name

  validates :location, length: { minimum: 2 }
  validates :name, length: { minimum: 2 }

  has_many :properties
  has_many :customers
  has_many :interviews
  # TODO: has_one :agency_manager
  # TODO: has_many :agents
end
