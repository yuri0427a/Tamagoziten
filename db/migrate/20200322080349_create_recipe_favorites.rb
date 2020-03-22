class CreateRecipeFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_favorites do |t|

      t.timestamps 
      t.integer :user_id,         null: false  
      t.integer :recipe_id,       null: false 

    end
  end
end
