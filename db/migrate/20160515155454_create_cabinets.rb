class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.string :name
      t.references :occupiable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
