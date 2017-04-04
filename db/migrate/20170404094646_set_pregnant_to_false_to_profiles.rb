class SetPregnantToFalseToProfiles < ActiveRecord::Migration[5.0]
  def change
      change_column :profiles, :pregnant, :boolean, default: false
  end
end
