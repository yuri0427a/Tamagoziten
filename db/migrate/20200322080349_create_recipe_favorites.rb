class CreateRecipeFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_favorites do |t|

      t.timestamps
    end
  end
end
