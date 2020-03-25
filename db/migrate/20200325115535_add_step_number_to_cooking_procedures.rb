class AddStepNumberToCookingProcedures < ActiveRecord::Migration[5.2]
  def change
    add_column :cooking_procedures, :step_number, :integer
  end
end
