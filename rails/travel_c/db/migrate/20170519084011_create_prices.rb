class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :country_id, null: false #国テーブル　ID
      t.integer :currency_id, null: false #通貨テーブル ID
      t.integer :water_price, null: false #水一本あたりの値段

      t.timestamps
    end
  end
end
