class Interview < ActiveRecord::Base
  attr_accessible :date, :time
  validate :not_past_date

  def not_past_date
    errors.add(:date, "cannot be in the past!") if date.past?
  end
end
