class RenameAnimalGenderToType < ActiveRecord::Migration
  def change
    rename_column :animals, :gender, :type
  end
end
