class CreateCookingProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :cooking_procedures do |t|

      t.timestamps
    end
  end
end
