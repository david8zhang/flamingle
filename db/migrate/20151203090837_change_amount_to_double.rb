class ChangeAmountToDouble < ActiveRecord::Migration
  def change
      change_column :donations, :amount, :float, :default => 0.00
  end
end
