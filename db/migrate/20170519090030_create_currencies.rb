class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :name, null: false
      t.integer :exchange, null:false

      t.timestamps
    end
  end
end
