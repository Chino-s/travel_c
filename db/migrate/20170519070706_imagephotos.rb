class Imagephotos < ActiveRecord::Migration
  def up
    add_column :countries, :imagephoto, :string
  end

  def down
    remove_column :countries, :imagephoto
  end
end
