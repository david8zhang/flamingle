class ChangeDonationDefault < ActiveRecord::Migration
  def change
      change_column :donations, :amount, :integer, :default => 0
  end
end
