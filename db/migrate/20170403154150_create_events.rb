class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :description
      t.string :street_name
      t.string :street_number
      t.string :zipcode
      t.string :city
      t.string :country
      t.datetime :start_date
      t.datetime :end_date
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
