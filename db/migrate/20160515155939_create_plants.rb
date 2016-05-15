class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.boolean :is_green
      t.boolean :is_flowering
      t.timestamps null: false
    end
  end
end
