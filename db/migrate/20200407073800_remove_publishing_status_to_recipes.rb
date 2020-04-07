class RemovePublishingStatusToRecipes < ActiveRecord::Migration[5.2]
  def change
     remove_column :recipes, :publishing_status, :boolean, default: true, null: false
  end
end
