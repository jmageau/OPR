class VisitingList < ActiveRecord::Base
  attr_accessible :customer_id
  has_and_belongs_to_many :properties
  belongs_to :customer
end
