class CreateCountryCods < ActiveRecord::Migration
  def change
    create_table :country_cods do |t|
      t.integer :deathtoll
      t.integer :country_id
      t.integer :cod_id
      t.timestamps null: false
    end
  end
end
