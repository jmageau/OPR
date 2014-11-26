class AddSubsidiaryAgencyToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :subsidiary_agency_id, :integer
  end
end
