class AdGgooglemapToCountry < ActiveRecord::Migration
  def up
    add_column :countries, :googlemap, :string
  end

  def down
    remove_column :countries, :imagephoto
  end
end
