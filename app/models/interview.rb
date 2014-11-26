class Interview < ActiveRecord::Base
  attr_accessible :date, :time
  validates_with DateValidator
end