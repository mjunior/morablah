class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      
      t.integer :person_one_id
      t.integer :person_two_id

      t.timestamps
    end
  end
end
