class CreateCookingMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :cooking_materials do |t|

      t.timestamps
    end
  end
end
