class CreateClauseStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :clause_statuses do |t|
      t.references :clause, foreign_key: true
      t.references :person, foreign_key: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
