class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.string :full_address
      t.string :amount
      t.string :max_people

      t.timestamps
    end
  end
end
