class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false #国名
      t.string :imagephoto #イメージ画像
      t.integer :area_id #エリアID
      t.integer :country_id #国ID
      t.integer :city_ranking #世界都市ランキング
      
      t.timestamps
    end
  end
end
