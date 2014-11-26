class VisitingList < ActiveRecord::Base
  attr_accessible :customer_id
  has_many :properties
  # TODO: belongs_to :customer
end
