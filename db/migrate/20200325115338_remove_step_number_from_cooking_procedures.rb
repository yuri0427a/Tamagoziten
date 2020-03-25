class RemoveStepNumberFromCookingProcedures < ActiveRecord::Migration[5.2]
  def change
    remove_column :cooking_procedures, :step_number, :integer
  end
end
