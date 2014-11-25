class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
