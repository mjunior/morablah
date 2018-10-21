class AddRemaningAmountToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :remaining_amount, :float
  end
end
