class CreateCods < ActiveRecord::Migration
  def change
    create_table :cods do |t|
      t.string :name
      t.integer :charity_id

      t.timestamps null: false
    end
  end
end
