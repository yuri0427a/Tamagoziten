class CreateRecipeCategoryRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_category_relations do |t|
      t.integer :recipe_id
      t.integer :category_id
      t.timestamps
    end
  end
end
