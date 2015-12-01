class CreateUserCharities < ActiveRecord::Migration
  def change
    create_table :user_charities do |t|
      t.boolean :is_leader
      t.integer :user_id
      t.integer :charity_id
      t.timestamps null: false
    end
  end
end
