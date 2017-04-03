class CreateInterestLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :interest_links do |t|
      t.references :profile, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
