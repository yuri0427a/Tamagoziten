class CreateRecipeReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_reviews do |t|
      t.timestamps 
      t.integer :user_id,         null: false 
      t.integer :recipe_id,       null: false 
      t.string :impression,       null: false 
      t.string :cooking_image_id 
    end
  end
end
