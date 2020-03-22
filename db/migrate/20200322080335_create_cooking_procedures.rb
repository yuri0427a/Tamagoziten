class CreateCookingProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :cooking_procedures do |t|


      t.timestamps
      t.integer :recipe_id,            null: false  
      t.integer :step_number,          AUTO_INCREMENT: true, null: false  
      t.string :procedure_description, null: false 
    end
  end
end
