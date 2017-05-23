class CreateHeritageCategories < ActiveRecord::Migration
  def change
    create_table :heritage_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
