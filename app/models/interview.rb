class Interview < ActiveRecord::Base
  attr_accessible :date, :time, :subsidiary_agency_id
  validates_with DateValidator
  belongs_to :subsidiary_agency
  # TODO: has_one :customer
end