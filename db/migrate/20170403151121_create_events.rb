class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :description
      t.string :street_name
      t.string :street_number
      t.string :zipcode_string
      t.string :city
      t.string :country
      t.date :date
      t.float :duration
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
