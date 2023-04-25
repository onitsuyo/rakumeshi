class RenameNameToStep < ActiveRecord::Migration[6.0]
  def change
    rename_column :procedures, :name, :step
  end
end
