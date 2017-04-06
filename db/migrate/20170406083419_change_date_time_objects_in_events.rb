class ChangeDateTimeObjectsInEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :start_date, :datetime
    add_column :events, :start_date, :date
    add_column :events, :start_time, :time
    add_column :events, :duration, :integer
  end
end
