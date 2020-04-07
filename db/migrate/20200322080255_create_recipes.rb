class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t| 
      t.string :name,                   null: false 
      t.string :description,            
      t.string :recipe_image_id,        
      t.integer :serving,               null: false 
      t.integer :cooking_treime,          null: false 
      t.integer :egg_quantity,          null: false 
      t.boolean :publishing_status,     default: true,  null: false 
      t.timestamps null: false 

      t.timestamps
    end
  end
end
