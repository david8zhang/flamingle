class ChangeAmountToDouble < ActiveRecord::Migration
  def change
      change_column :donations, :amount, :double, :default => 0.00
  end
end
