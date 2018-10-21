class CreateGroupPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :group_preferences do |t|
      t.references :group, foreign_key: true
      t.references :preference, foreign_key: true
      t.timestamps
    end
  end
end
