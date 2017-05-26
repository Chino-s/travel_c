class CreateTraffics < ActiveRecord::Migration
  def change
    create_table :traffics do |t|
      t.integer :country_id, null: false #国テーブル　ID
      t.integer :fright_time
      t.integer :avg_airticket_price
      t.integer :airport_id

      t.timestamps
    end
  end
end
