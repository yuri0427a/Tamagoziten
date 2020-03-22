class CreateCookingMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :cooking_materials do |t|

      t.timestamps
      t.integer :recipe_id,       null: false 
      t.string :material_name,    null: false 
      t.float :material_quantity, null: false 
      
    end
  end
end
