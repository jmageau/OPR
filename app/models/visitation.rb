class Visitation < ActiveRecord::Base
  attr_accessible :comments, :date, :property_id, :time

  validates_with DateValidator
  belongs_to :property
  has_and_belongs_to_many :customers
end
