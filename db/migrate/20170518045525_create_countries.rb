class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name, null: false #国名
      t.string :language, null: false #言語
      t.string :capital, null:false #首都
      t.integer :area_id, null:false #エリアID
      t.integer :popular_ranking #観光人気ランキング

      t.timestamps
    end
  end
end
