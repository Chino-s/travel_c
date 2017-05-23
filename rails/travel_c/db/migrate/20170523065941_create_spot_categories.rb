class CreateSpotCategories < ActiveRecord::Migration
  def change
    create_table :spot_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
