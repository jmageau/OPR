class Interview < ActiveRecord::Base
  attr_accessible :date, :time
  validates_with DateValidator
  belongs_to :subsidiary_agency
  # TODO: has_one :customer
end