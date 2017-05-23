class CreateWorldHeritages < ActiveRecord::Migration
  def change
    create_table :world_heritages do |t|
      t.string :name, null: false
      t.integer :area_id, null: false
      t.integer :world_heritage_id, null: false

      t.timestamps
    end
  end
end
