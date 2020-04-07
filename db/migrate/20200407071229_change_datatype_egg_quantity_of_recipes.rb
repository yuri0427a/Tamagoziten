class ChangeDatatypeEggQuantityOfRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :egg_quantity, :string
  end
end
