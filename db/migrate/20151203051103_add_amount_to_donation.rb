class AddAmountToDonation < ActiveRecord::Migration
  def change
      add_column :donations, :amount, :integer
  end
end
