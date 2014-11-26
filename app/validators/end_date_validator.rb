class EndDateValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add(:end_date, "cannot be in the past!") if record.end_date.past?
  end
end