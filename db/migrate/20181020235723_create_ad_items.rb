class CreateAdItems < ActiveRecord::Migration[5.2]
  def change
    create_table :ad_items do |t|
      t.references :ad, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
