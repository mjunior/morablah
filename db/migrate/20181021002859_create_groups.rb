class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :ad, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
