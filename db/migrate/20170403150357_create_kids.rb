class CreateKids < ActiveRecord::Migration[5.0]
  def change
    create_table :kids do |t|
      t.string :gender
      t.date :date_of_birth
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
