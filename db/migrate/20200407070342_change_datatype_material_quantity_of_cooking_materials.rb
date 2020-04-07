class ChangeDatatypeMaterialQuantityOfCookingMaterials < ActiveRecord::Migration[5.2]
  def change
    change_column :cooking_materials, :material_quantity, :string
  end
end
