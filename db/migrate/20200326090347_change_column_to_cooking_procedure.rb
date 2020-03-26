class ChangeColumnToCookingProcedure < ActiveRecord::Migration[5.2]
  def change
       def up
        change_column :cooking_procedures, :step_number, :integer
       end

       def down
        change_column :cooking_procedures, :step_number, :integer, AUTO_INCREMENT:1
       end
  end
end
