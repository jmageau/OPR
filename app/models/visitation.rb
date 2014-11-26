class Visitation < ActiveRecord::Base
  attr_accessible :comments, :date, :property_id, :time

  validates_with DateValidator
  belongs_to :property
  # TODO: has_many :customers
end
