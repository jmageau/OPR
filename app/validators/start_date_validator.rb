class StartDateValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:start_date, "cannot be in the past!") if record.start_date.past?
  end
end