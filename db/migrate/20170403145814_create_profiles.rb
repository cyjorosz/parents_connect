class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :street_name
      t.string :street_number
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :gender
      t.boolean :pregnant
      t.date :due_date
      t.text :bio
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
