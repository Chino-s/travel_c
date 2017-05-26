class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name, null: false
      t.integer :area_id, null: false
      t.integer :spot_category_id

      t.timestamps
    end
  end
end
