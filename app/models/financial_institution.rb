class FinancialInstitution < ActiveRecord::Base
  attr_accessible :name

  validates :name, length: { minimum: 2 }

  has_many :users
end
