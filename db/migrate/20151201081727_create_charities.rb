class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.integer :disease_id
      t.timestamps null: false
    end
  end
end
