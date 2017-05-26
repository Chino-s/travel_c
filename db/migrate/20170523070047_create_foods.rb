class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.integer :country_id, null: false #国テーブル　ID
      t.integer :food_category_id, null: false 

      t.timestamps
    end
  end
end
