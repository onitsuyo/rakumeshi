class RenameNameToIngredientName < ActiveRecord::Migration[6.0]
  def change
    rename_column :ingredients, :name, :ingredient_name 
  end
end
