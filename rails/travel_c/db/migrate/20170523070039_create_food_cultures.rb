class CreateFoodCultures < ActiveRecord::Migration
  def change
    create_table :food_cultures do |t|
      t.string :name, null: false
      t.integer :country_id, null: false #国テーブル　ID

      t.timestamps
    end
  end
end
