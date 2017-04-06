class DropInterestLinks < ActiveRecord::Migration[5.0]
  def change
    drop_table :interest_links
  end
end
