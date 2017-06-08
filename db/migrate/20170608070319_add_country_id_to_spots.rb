class AddCountryIdToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :country_id, :integer
  end
end
