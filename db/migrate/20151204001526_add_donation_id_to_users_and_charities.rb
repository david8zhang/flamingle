class AddDonationIdToUsersAndCharities < ActiveRecord::Migration
  def change
    add_column :users, :donation_id, :integer
    add_column :charities, :donation_id, :integer
    add_index :users, :donation_id
    add_index :charities, :donation_id
  end
end
