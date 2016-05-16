class RenameTypeToClassification < ActiveRecord::Migration
  def change
    rename_column :animals, :type, :classification
  end
end
