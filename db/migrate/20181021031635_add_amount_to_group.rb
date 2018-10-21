class AddAmountToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :amount, :float
  end
end
