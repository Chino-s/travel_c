class CreateClimates < ActiveRecord::Migration
  def change
    create_table :climates do |t|
      t.integer :country_id, null: false #国テーブル　ID
      t.string :season
      t.integer :temperature_sub
      t.integer :precipitation

      t.timestamps
    end
  end
end
