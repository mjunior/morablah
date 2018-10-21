class AddRemaningAmountToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :remaning_amount, :float
  end
end
