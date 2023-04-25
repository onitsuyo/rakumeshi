class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name,    null: false
      t.string :caption, null: false
      t.integer :cooking_time
      t.timestamps
    end
  end
end
