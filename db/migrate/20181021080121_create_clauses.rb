class CreateClauses < ActiveRecord::Migration[5.2]
  def change
    create_table :clauses do |t|
      t.references :proposal, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
