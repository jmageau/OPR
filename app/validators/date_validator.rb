class DateValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:date, "cannot be in the past!") if record.date.past?
  end
end