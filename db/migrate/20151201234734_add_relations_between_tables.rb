class AddRelationsBetweenTables < ActiveRecord::Migration
  def change
    add_index :charities, :cod_id
    add_index :cods, :charity_id

    add_index :donations, :charity_id
    add_index :donations, :user_id

    add_index :user_charities, :charity_id
    add_index :user_charities, :user_id

    add_index :country_cods, :country_id
    add_index :country_cods, :cod_id
  end
end
