class AddCountryIdToCharities < ActiveRecord::Migration
  def change
      add_column :charities, :country_id, :integer
  end
end
