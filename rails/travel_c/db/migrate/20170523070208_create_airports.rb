class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
