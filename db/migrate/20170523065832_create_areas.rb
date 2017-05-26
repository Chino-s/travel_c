class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name, null: false
      t.integer :country_id, null: false #国テーブル　ID
      
      t.timestamps
    end
  end
end
